use jokers_of_neon_lib::models::data::poker_hand::PokerHand;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct PlayerLevelPokerHand {
    #[key]
    pub game_id: u64,
    #[key]
    pub poker_hand: PokerHand,
    pub level: u8,
    pub multi: u32,
    pub points: u32,
}
