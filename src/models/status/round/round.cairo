#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct Round {
    #[key]
    game_id: u32,
    player_score: u32,
    level_score: u32,
    hands: u8,
    discard: u8
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct RoundRewardsConfig {
    #[key]
    pub game_id: u32,
    pub reward: u32,
    pub reward_per_discards: u32,
    pub reward_per_plays: u32
}
