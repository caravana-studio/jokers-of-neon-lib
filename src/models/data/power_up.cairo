#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct PowerUp {
    pub id: u32,
    pub points: u32,
    pub multi: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct GamePowerUp {
    #[key]
    pub game_id: u32,
    pub power_ups: Span<u32>,
}

const TWO_POW_32: u256 = 0x100000000; // 2^32
const TWO_POW_64: u256 = 0x10000000000000000; // 2^64
impl PowerUpIntoFelt252 of Into<PowerUp, felt252> {
    fn into(self: PowerUp) -> felt252 {
        (self.id.into() + self.points.into() * TWO_POW_32 + self.multi.into() * TWO_POW_64).try_into().unwrap()
    }
}

impl Felt252IntoPowerUp of Into<felt252, PowerUp> {
    fn into(self: felt252) -> PowerUp {
        let packed = self.into();
        let (packed, id) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));
        let (packed, points) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));
        let (_, multi) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));

        PowerUp { id: id.try_into().unwrap(), points: points.try_into().unwrap(), multi: multi.try_into().unwrap() }
    }
}
