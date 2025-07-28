use jokers_of_neon_lib::models::{
    card_type::CardType, data::{card::Card, poker_hand::PokerHand},
    status::{game::game::{CurrentSpecialCards, Game, GameState}, round::round::Round},
};

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct GameTracker {
    #[key]
    game_id: u64,
    highest_hand: u32,
    most_played_hand: (PokerHand, u32),
    highest_cash: u32,
    cards_played_count: u32,
    cards_discarded_count: u32,
    rage_wins: u32,
    special_cards_sold: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct PurchaseTracker {
    #[key]
    game_id: u64,
    traditional_cards_count: u32,
    modifier_cards_count: u32,
    special_cards_count: u32,
    loot_boxes_count: u32,
    power_up_count: u32,
    level_poker_hands_count: u32,
    burn_count: u32,
    reroll_count: u32,
    special_cards_sold: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct PokerHandTracker {
    #[key]
    game_id: u64,
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
    hand: (PokerHand, u32), // (Hand, Level)
    card_type: CardType,
    cards_played: Span<(bool, u32, Card)>, // (hit, idx, Card)
    cards_in_hand: Span<(u32, Card)>, // (idx, Card)
    cards_in_deck: Span<u32>,
    special_cards: Span<CurrentSpecialCards>,
    power_ups: Span<u32>,
    purchase_tracker: PurchaseTracker,
    game_tracker: GameTracker,
    poker_hand_tracker: PokerHandTracker,
}

impl GameContextDefault of Default<GameContext> {
    fn default() -> GameContext {
        GameContext {
            game: Game {
                id: 0,
                mod_id: 0,
                state: GameState::Round,
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
                available_rerolls: 0,
                current_node_id: 0,
                seed: 0,
            },
            round: Round {
                game_id: 0,
                current_score: 0,
                target_score: 0,
                remaining_plays: 0,
                remaining_discards: 0,
                rages: array![].span(),
            },
            hand: (PokerHand::None, 0),
            card_type: CardType::None,
            cards_played: array![].span(),
            cards_in_hand: array![].span(),
            cards_in_deck: array![].span(),
            special_cards: array![].span(),
            power_ups: array![].span(),
            purchase_tracker: PurchaseTracker {
                game_id: 0,
                traditional_cards_count: 0,
                modifier_cards_count: 0,
                special_cards_count: 0,
                loot_boxes_count: 0,
                power_up_count: 0,
                level_poker_hands_count: 0,
                burn_count: 0,
                reroll_count: 0,
                special_cards_sold: 0,
            },
            game_tracker: GameTracker {
                game_id: 0,
                highest_hand: 0,
                most_played_hand: (PokerHand::None, 0),
                highest_cash: 0,
                cards_played_count: 0,
                cards_discarded_count: 0,
                rage_wins: 0,
                special_cards_sold: 0,
            },
            poker_hand_tracker: PokerHandTracker {
                game_id: 0,
                royal_flush: 0,
                straight_flush: 0,
                five_of_a_kind: 0,
                four_of_a_kind: 0,
                full_house: 0,
                straight: 0,
                flush: 0,
                three_of_a_kind: 0,
                two_pair: 0,
                one_pair: 0,
                high_card: 0,
            },
        }
    }
}

// Events

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct BuyTraditionalCardEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub traditional_cards_count: u32,
    pub level: u32,
    pub round: u32,
    pub card_id: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct BuyModifierCardEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub modifier_cards_count: u32,
    pub level: u32,
    pub round: u32,
    pub card_id: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct BuySpecialCardEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub special_cards_count: u32,
    pub level: u32,
    pub round: u32,
    pub card_id: u32,
    pub is_temporary: bool,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct BuyBlisterPackEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub loot_boxes_count: u32,
    pub level: u32,
    pub round: u32,
    pub blister_pack_id: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct BuyPowerUpEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub power_up_count: u32,
    pub level: u32,
    pub round: u32,
    pub power_up_id: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct BuyLevelUpPokerHandEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub level_poker_hands_count: u32,
    pub level: u32,
    pub round: u32,
    pub poker_hand: PokerHand,
    pub level_hand: u8,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct BuyBurnEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub burn_count: u32,
    pub level: u32,
    pub round: u32,
    pub card_id: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct BuyRerollEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub reroll_count: u32,
    pub level: u32,
    pub round: u32,
    pub reroll_executed: bool,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct BuySpecialCardsSoldEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub special_cards_sold: u32,
    pub level: u32,
    pub round: u32,
    pub card_id: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
struct BuyBlisterPackResultEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub loot_boxes_count: u32,
    pub level: u32,
    pub round: u32,
    pub cards: Span<u32>,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct BuySlotSpecialCardEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub count_slots: u32,
    pub level: u32,
    pub round: u32,
    pub slot_executed: bool,
}
