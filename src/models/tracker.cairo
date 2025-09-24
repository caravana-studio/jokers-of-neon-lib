use jokers_of_neon_lib::models::card_type::CardType;
use jokers_of_neon_lib::models::data::card::Card;
use jokers_of_neon_lib::models::data::poker_hand::PokerHand;
use jokers_of_neon_lib::models::status::game::game::{CurrentSpecialCards, Game, GameState};
use jokers_of_neon_lib::models::status::round::round::Round;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct GameTracker {
    #[key]
    pub game_id: u64,
    pub highest_hand: u32,
    pub most_played_hand: (PokerHand, u32),
    pub highest_cash: u32,
    pub cards_played_count: u32,
    pub cards_discarded_count: u32,
    pub rage_wins: u32,
}

impl GameTrackerDefault of Default<GameTracker> {
    fn default() -> GameTracker {
        GameTracker {
            game_id: 0,
            highest_hand: 0,
            most_played_hand: (PokerHand::None, 0),
            highest_cash: 0,
            cards_played_count: 0,
            cards_discarded_count: 0,
            rage_wins: 0,
        }
    }
}

#[generate_trait]
impl GameTrackerImpl of GameTrackerTrait {
    fn most_played_hand(ref self: GameTracker, poker_hand_tracker: PokerHandTracker) {
        let mut max_count = 0;
        let mut most_played = PokerHand::None;

        if poker_hand_tracker.royal_flush > max_count {
            max_count = poker_hand_tracker.royal_flush;
            most_played = PokerHand::RoyalFlush;
        }
        if poker_hand_tracker.straight_flush > max_count {
            max_count = poker_hand_tracker.straight_flush;
            most_played = PokerHand::StraightFlush;
        }
        if poker_hand_tracker.five_of_a_kind > max_count {
            max_count = poker_hand_tracker.five_of_a_kind;
            most_played = PokerHand::FiveOfAKind;
        }
        if poker_hand_tracker.four_of_a_kind > max_count {
            max_count = poker_hand_tracker.four_of_a_kind;
            most_played = PokerHand::FourOfAKind;
        }
        if poker_hand_tracker.full_house > max_count {
            max_count = poker_hand_tracker.full_house;
            most_played = PokerHand::FullHouse;
        }
        if poker_hand_tracker.flush > max_count {
            max_count = poker_hand_tracker.flush;
            most_played = PokerHand::Flush;
        }
        if poker_hand_tracker.straight > max_count {
            max_count = poker_hand_tracker.straight;
            most_played = PokerHand::Straight;
        }
        if poker_hand_tracker.three_of_a_kind > max_count {
            max_count = poker_hand_tracker.three_of_a_kind;
            most_played = PokerHand::ThreeOfAKind;
        }
        if poker_hand_tracker.two_pair > max_count {
            max_count = poker_hand_tracker.two_pair;
            most_played = PokerHand::TwoPair;
        }
        if poker_hand_tracker.one_pair > max_count {
            max_count = poker_hand_tracker.one_pair;
            most_played = PokerHand::OnePair;
        }
        if poker_hand_tracker.high_card > max_count {
            max_count = poker_hand_tracker.high_card;
            most_played = PokerHand::HighCard;
        }
        self.most_played_hand = (most_played, max_count);
    }
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct PurchaseTracker {
    #[key]
    pub game_id: u64,
    pub traditional_cards_count: u32,
    pub modifier_cards_count: u32,
    pub special_cards_count: u32,
    pub loot_boxes_count: u32,
    pub power_up_count: u32,
    pub level_poker_hands_count: u32,
    pub burn_count: u32,
    pub reroll_count: u32,
    pub special_cards_sold: u32,
}

impl PurchaseTrackerDefault of Default<PurchaseTracker> {
    fn default() -> PurchaseTracker {
        PurchaseTracker {
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
        }
    }
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct PokerHandTracker {
    #[key]
    pub game_id: u64,
    pub royal_flush: u32,
    pub straight_flush: u32,
    pub five_of_a_kind: u32,
    pub four_of_a_kind: u32,
    pub full_house: u32,
    pub straight: u32,
    pub flush: u32,
    pub three_of_a_kind: u32,
    pub two_pair: u32,
    pub one_pair: u32,
    pub high_card: u32,
}

impl PokerHandTrackerDefault of Default<PokerHandTracker> {
    fn default() -> PokerHandTracker {
        PokerHandTracker {
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
        }
    }
}

#[derive(Copy, Drop, Serde)]
pub struct GameContext {
    pub game: Game,
    pub round: Round,
    pub hand: (PokerHand, u32), // (Hand, Level)
    pub card_type: CardType,
    pub cards_played: Span<(bool, u32, Card)>, // (hit, idx, Card)
    pub cards_in_hand: Span<(u32, Card)>, // (idx, Card)
    pub cards_in_deck: Span<u32>,
    pub special_cards: Span<CurrentSpecialCards>,
    pub power_ups: Span<u32>,
    pub purchase_tracker: PurchaseTracker,
    pub game_tracker: GameTracker,
    pub poker_hand_tracker: PokerHandTracker,
}

impl GameContextDefault of Default<GameContext> {
    fn default() -> GameContext {
        GameContext {
            game: Game {
                id: 0,
                mod_id: 0,
                state: GameState::Round,
                owner: 0.try_into().unwrap(),
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
                round: 0,
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
            purchase_tracker: Default::default(),
            game_tracker: Default::default(),
            poker_hand_tracker: Default::default(),
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
    pub current_node_id: u32,
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
    pub current_node_id: u32,
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
    pub current_node_id: u32,
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
    pub current_node_id: u32,
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
    pub current_node_id: u32,
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
    pub current_node_id: u32,
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
    pub current_node_id: u32,
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
    pub current_node_id: u32,
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
    pub current_node_id: u32,
    pub card_id: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct BuyBlisterPackResultEvent {
    #[key]
    pub game_id: u64,
    #[key]
    pub loot_boxes_count: u32,
    pub level: u32,
    pub current_node_id: u32,
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
    pub current_node_id: u32,
    pub slot_executed: bool,
}
