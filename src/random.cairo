use core::{integer::{U256DivRem, u256_try_as_non_zero}};
use jokers_of_neon_lib::interfaces::cartridge::vrf::{IVrfProviderDispatcher, IVrfProviderDispatcherTrait, Source};

use starknet::{ContractAddress, contract_address_const, get_block_timestamp, get_caller_address, get_tx_info};

const KATANA_CHAIN_ID: felt252 = 0x4b4154414e41;
const U128_MAX: u128 = 340282366920938463463374607431768211455;
const LCG_PRIME: u128 = 281474976710656;

fn get_vrf_address() -> ContractAddress {
    contract_address_const::<0x051fea4450da9d6aee758bdeba88b2f665bcbf549d2c61421aa724e9ac0ced8f>()
}


#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct Nonce {
    #[key]
    pub key: felt252,
    pub value: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Random {
    #[key]
    pub key: felt252,
    pub seed: u128,
}

#[generate_trait]
impl RandomImpl of RandomTrait {
    fn new(key: felt252) -> Random {
        let random_hash = get_random_hash();
        let seed = get_entropy(random_hash);
        Random { key, seed }
    }

    fn new_with_seed(key: felt252, seed: u128) -> Random {
        Random { key, seed }
    }

    fn get_random_number_zero_indexed(ref self: Random, range: u32) -> u32 {
        if range == 0 {
            return 0;
        }
        let result = (self.seed % range.into()).try_into().unwrap();
        self.seed = LCG(self.seed);
        result
    }

    fn get_random_number(ref self: Random, range: u32) -> u32 {
        if range == 0 {
            return 0;
        }

        let result = (self.seed % range.into() + 1).try_into().unwrap();
        self.seed = LCG(self.seed);
        result
    }

    fn between(ref self: Random, min: i32, max: i32) -> i32 {
        if min >= max {
            panic!("Random: min must be less than max");
        };

        if min == max {
            return min;
        }

        let seed: u256 = self.seed.into();
        
        self.seed = LCG(self.seed);

        if min >= 0 && max >= 0 {
            let range: u128 = (max - min + 1).try_into().unwrap();
            let rand = (seed.low % range) + min.try_into().unwrap();
            rand.try_into().unwrap()
        } else if min < 0 && max < 0 {
            let min_pos = -min;
            let max_pos = -max;
            let range: u128 = (min_pos - max_pos + 1).try_into().unwrap();
            let offset = seed.low % range;
            (max + offset.try_into().unwrap())
        } else {
            let min_pos = -min;
            let range: u128 = (min_pos + max + 1).try_into().unwrap();
            let pre_rand = seed.low % range;

            if pre_rand <= (min_pos).try_into().unwrap() {
                -pre_rand.try_into().unwrap()
            } else {
                (pre_rand - min_pos.try_into().unwrap()).try_into().unwrap()
            }
        }
    }
}

fn get_random_hash() -> felt252 {
    let chain_id = get_tx_info().unbox().chain_id;

    if chain_id != KATANA_CHAIN_ID {
        let vrf_provider = IVrfProviderDispatcher { contract_address: get_vrf_address() };
        vrf_provider.consume_random(Source::Nonce(get_caller_address()))
    } else {
        get_block_timestamp().into()
    }
}

fn get_entropy(felt_to_split: felt252) -> u128 {
    let (_d, r) = U256DivRem::div_rem(felt_to_split.into(), u256_try_as_non_zero(U128_MAX.into()).unwrap());
    r.try_into().unwrap() % LCG_PRIME
}

fn LCG(seed: u128) -> u128 {
    let a = 25214903917;
    let c = 11;
    let m = LCG_PRIME;

    (a * seed + c) % m
}
