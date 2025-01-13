#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct PowerUp {
    pub id: u32,
    pub points: u32,
    pub multi: u32
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct GamePowerUp {
    #[key]
    pub game_id: u32,
    pub power_ups: Span<u32>
}
