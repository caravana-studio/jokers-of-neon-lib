#[derive(Copy, Drop, Serde)]
pub struct RoundConfig {
    pub reward: u32,
    pub reward_per_discards: u32,
    pub reward_per_plays: u32
}
