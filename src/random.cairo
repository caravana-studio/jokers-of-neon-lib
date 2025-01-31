use starknet::ContractAddress;
use starknet::get_contract_address;

#[derive(Copy, Drop, Serde)]
struct Random {
    seed: felt252,
    nonce: usize,
}

#[generate_trait]
impl RandomImpl of RandomTrait {
    // one instance by contract, then passed by ref to sub fns
    fn new() -> Random {
        Random { seed: seed(get_contract_address()), nonce: 0 }
    }

    fn new_salt(nonce: u32) -> Random {
        Random { seed: seed(get_contract_address()), nonce }
    }

    fn next_seed(ref self: Random) -> felt252 {
        self.nonce += 1;
        self.seed = pedersen::pedersen(self.seed, self.nonce.into());
        self.seed
    }

    fn bool(ref self: Random) -> bool {
        let seed: u256 = self.next_seed().into();
        seed.low % 2 == 0
    }

    fn felt(ref self: Random) -> felt252 {
        let tx_hash = starknet::get_tx_info().unbox().transaction_hash;
        let seed = self.next_seed();
        pedersen::pedersen(tx_hash, seed)
    }

    fn occurs(ref self: Random, likelihood: u8) -> bool {
        if likelihood == 0 {
            return false;
        }

        let result = self.between(0, 100);
        result <= likelihood.try_into().unwrap()
    }

    fn between(ref self: Random, min: i32, max: i32) -> i32 {
        if min >= max {
            panic!("Random: min must be less than max");
        };
        let seed: u256 = self.next_seed().into();

        if min == max {
            return min;
        }

        if min >= 0 && max >= 0 {
            let range: u128 = (max - min + 1).try_into().unwrap();
            let rand = (seed.low % range) + min.try_into().unwrap();
            rand.try_into().unwrap()
        } else if min < 0 && max < 0 {
            let min_pos = -min;
            let max_pos = -max;
            let range: u128 = (min_pos - max_pos + 1).try_into().unwrap();
            let rand = (seed.low % range) + min.try_into().unwrap();
            -rand.try_into().unwrap()
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

fn seed(salt: ContractAddress) -> felt252 {
    pedersen::pedersen(starknet::get_tx_info().unbox().transaction_hash, salt.into())
}
