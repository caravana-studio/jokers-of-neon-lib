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

// TODO: Implement
impl PowerUpIntoFelt252 of Into<PowerUp, felt252> {
    fn into(self: PowerUp) -> felt252 {
        1
    }
}
// TODO: Implement
impl Felt252IntoCard of Into<felt252, PowerUp> {
    fn into(self: felt252) -> PowerUp {
        PowerUp { id: 0, points: 0, multi: 0 }
    }
}