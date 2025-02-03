use jokers_of_neon_lib::models::data::card::Card;
use jokers_of_neon_lib::models::data::poker_hand::PokerHand;
use jokers_of_neon_lib::models::status::game::game::Game;
use jokers_of_neon_lib::models::status::round::round::Round;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct GameTracker {
    #[key]
    game_id: u32,
    power_ups_used: u32,
    highest_hand: u32,
    rage_wins: u32,
    special_cards_removed: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct PurchaseTracker {
    #[key]
    game_id: u32,
    traditonal_cards_count: u32,
    modifier_cards_count: u32,
    special_cards_count: u32,
    loot_boxes_count: u32,
    power_up_count: u32,
    level_poker_hands_count: u32,
    burn_count: u32,
    reroll_count: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct PokerHandTracker {
    #[key]
    game_id: u32,
    royal_flush: u32,
    straight_flush: u32,
    five_of_a_kind: u32,
    four_of_a_kind: u32,
    full_house: u32,
    straight: u32,
    flush: u32,
    three_of_a_kind: u32,
    two_pair: u32,
    one_pair: u32,
    high_card: u32,
}

#[derive(Copy, Drop, Serde)]
struct GameContext {
    game: Game,
    round: Round,
    hand: PokerHand,
    cards_played: Span<(bool, u32, Card)>, // (hit, idx, Card)
    cards_in_hand: Span<(u32, Card)>, // (idx, Card)
    cards_in_deck: Span<u32>,
    special_cards: Span<u32>,
    power_ups: Span<u32>,
    purchase_tracker: PurchaseTracker,
    game_tracker: GameTracker,
}
