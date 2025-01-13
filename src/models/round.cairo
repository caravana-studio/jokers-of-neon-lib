#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct Round {
    #[key]
    pub game_id: u32,
    pub player_score: u32,
    pub level_score: u32,
    pub hands: u8,
    pub discard: u8
}

