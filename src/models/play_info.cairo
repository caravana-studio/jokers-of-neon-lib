use jokers_of_neon_lib::models::data::card::Card;
use jokers_of_neon_lib::models::data::poker_hand::PokerHand;

#[derive(Copy, Drop, Serde)]
struct PlayInfo {
    hand: PokerHand,
    cards: Span<(u32, Card)>,
    is_neon: bool
}
