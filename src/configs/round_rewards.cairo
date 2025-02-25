#[derive(Copy, Drop, Serde)]
pub struct RoundRewardConfig {
    pub reward: u32,
    pub reward_per_discards: u32,
    pub reward_per_plays: u32,
}
