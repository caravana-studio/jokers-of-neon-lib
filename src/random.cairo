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

        let result = self.between::<u8>(0, 100);
        result <= likelihood
    }

    fn between<T, +Into<T, u128>, +Into<T, u256>, +TryInto<u128, T>, +PartialOrd<T>, +Zeroable<T>, +Copy<T>, +Drop<T>>(
        ref self: Random, min: T, max: T
    ) -> T {
        let seed: u256 = self.next_seed().into();

        if min >= max {
            return Zeroable::zero();
        };

        let range: u128 = max.into() - min.into() + 1;
        let rand = (seed.low % range) + min.into();
        rand.try_into().unwrap()
    }

    fn between_i32(ref self: Random, min: i32, max: i32) -> i32 {
        // Asegúrate de que min <= max
        assert(min <= max, '[i32] - Error: min > max!');

        let MIN_i32: u256 = (-0x80000000).try_into().unwrap();
        let MAX_i32: u256 = 0x7fffffff;

        let seed: u256 = self.next_seed().into();

        let adjusted_seed = if seed < MIN_i32 {
            MIN_i32
        } else if seed > MAX_i32 {
            MAX_i32
        } else {
            seed
        };

        let adjusted_seed_felt252: felt252 = adjusted_seed.try_into().unwrap();
        let seed_i32: i32 = adjusted_seed_felt252.try_into().unwrap();
        let range: i32 = max - min + 1;
        let random_within_range: i32 = seed_i32 % range;

        let random_value: i32 = random_within_range + min;
        return random_value;
    }
}

fn seed(salt: ContractAddress) -> felt252 {
    pedersen::pedersen(starknet::get_tx_info().unbox().transaction_hash, salt.into())
}
