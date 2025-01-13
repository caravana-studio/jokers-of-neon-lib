/// * `game_id` - The unique identifier of the game instance.
/// * `current_probability` - The current probability (0-100) of a rage round being activated.
/// * `active_rage_ids` - An array containing the IDs of the active rages for the current round.
#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct RageRound {
    #[key]
    pub game_id: u32,
    pub is_active: bool,
    pub current_probability: u16,
    pub active_rage_ids: Span<u32>,
    pub last_active_level: u8,
}
