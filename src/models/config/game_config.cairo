#[derive(Copy, Drop, Serde)]
pub struct GameConfig {
    pub max_plays: u8,
    pub max_discard: u8,
    pub len_hand: u32,
    pub len_max_special_cards: u32,
    pub len_max_power_ups: u32,
}
