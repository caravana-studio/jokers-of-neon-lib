use core::{integer::{U256DivRem, u256_try_as_non_zero}};
use jokers_of_neon_lib::interfaces::cartridge::vrf::{IVrfProviderDispatcher, IVrfProviderDispatcherTrait, Source};

use starknet::{ContractAddress, contract_address_const, get_block_timestamp, get_caller_address, get_tx_info};

const MAINNET_CHAIN_ID: felt252 = 0x534e5f4d41494e;
const SEPOLIA_CHAIN_ID: felt252 = 0x534e5f5345504f4c4941;
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

    fn get_random_number_zero_indexed(ref self: Random, range: u8) -> u8 {
        if range == 0 {
            return 0;
        }
        let result = (self.seed % range.into()).try_into().unwrap();
        self.seed = LCG(self.seed);
        result
    }

    fn get_random_number(ref self: Random, range: u8) -> u8 {
        if range == 0 {
            return 0;
        }

        let result = (self.seed % range.into() + 1).try_into().unwrap();
        self.seed = LCG(self.seed);
        result
    }
}

fn get_random_hash() -> felt252 {
    let chain_id = get_tx_info().unbox().chain_id;

    if chain_id == MAINNET_CHAIN_ID || chain_id == SEPOLIA_CHAIN_ID {
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
