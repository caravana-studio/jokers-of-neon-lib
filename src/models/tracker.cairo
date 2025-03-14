use jokers_of_neon_lib::models::{
    card_type::CardType, data::{card::Card, poker_hand::PokerHand},
    status::{game::game::{CurrentSpecialCards, Game, GameState}, round::round::Round},
};

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
    card_type: CardType,
    cards_played: Span<(bool, u32, Card)>, // (hit, idx, Card)
    cards_in_hand: Span<(u32, Card)>, // (idx, Card)
    cards_in_deck: Span<u32>,
    special_cards: Span<CurrentSpecialCards>,
    power_ups: Span<u32>,
    purchase_tracker: PurchaseTracker,
    game_tracker: GameTracker,
}

impl GameContextDefault of Default<GameContext> {
    fn default() -> GameContext {
        GameContext {
            game: Game {
                id: 0,
                mod_id: 0,
                state: GameState::IN_GAME,
                owner: Zeroable::zero(),
                player_name: 0,
                player_score: 0,
                level: 0,
                hand_len: 0,
                plays: 0,
                discards: 0,
                current_specials_len: 0,
                special_slots: 0,
                cash: 0,
                shop_config_id: 0,
                available_rerolls: 0,
            },
            round: Round { game_id: 0, player_score: 0, level_score: 0, remaining_plays: 0, remaining_discards: 0 },
            hand: PokerHand::None,
            card_type: CardType::None,
            cards_played: array![].span(),
            cards_in_hand: array![].span(),
            cards_in_deck: array![].span(),
            special_cards: array![].span(),
            power_ups: array![].span(),
            purchase_tracker: PurchaseTracker {
                game_id: 0,
                traditonal_cards_count: 0,
                modifier_cards_count: 0,
                special_cards_count: 0,
                loot_boxes_count: 0,
                power_up_count: 0,
                level_poker_hands_count: 0,
                burn_count: 0,
                reroll_count: 0,
            },
            game_tracker: GameTracker {
                game_id: 0, power_ups_used: 0, highest_hand: 0, rage_wins: 0, special_cards_removed: 0,
            },
        }
    }
}
