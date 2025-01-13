use jokers_of_neon_lib::models::card::Card;
use jokers_of_neon_lib::models::poker_hand::PokerHand;

#[derive(Copy, Drop, Serde)]
struct PlayInfo {
    hand: PokerHand,
    cards: Span<(u32, Card)>,
    is_neon: bool
}
