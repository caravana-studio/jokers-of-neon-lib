use jokers_of_neon_lib::models::data::poker_hand::PokerHand;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct PlayerLevelPokerHand {
    #[key]
    game_id: u32,
    #[key]
    poker_hand: PokerHand,
    level: u8,
}
