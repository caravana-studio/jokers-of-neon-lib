use starknet::ContractAddress;

#[derive(Serde, Copy, Drop, Introspect, PartialEq)]
pub enum GameState {
    IN_GAME,
    AT_SHOP,
    FINISHED,
    OPEN_BLISTER_PACK
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct Game {
    #[key]
    pub id: u32,
    pub owner: ContractAddress,
    pub player_name: felt252,
    pub max_hands: u8,
    pub max_discard: u8,
    pub max_jokers: u8,
    pub round: u8,
    pub player_score: u32,
    pub level: u32,
    pub len_hand: u32,
    pub len_max_current_special_cards: u32,
    pub len_current_special_cards: u32,
    pub current_jokers: u8,
    pub len_max_current_power_ups: u32,
    pub state: GameState,
    pub cash: u32
}

#[derive(Copy, Drop, Serde)]
pub struct CurrentSpecialCards {
    #[key]
    pub game_id: u32,
    #[key]
    pub idx: u32,
    pub effect_card_id: u32,
    pub is_temporary: bool,
    pub remaining: u32
}

impl DefaultGame of Default<Game> {
    fn default() -> Game {
        Game {
            id: 1,
            owner: Zeroable::zero(),
            player_name: Zeroable::zero(),
            max_hands: 5,
            max_discard: 5,
            max_jokers: 5,
            round: 1,
            player_score: 0,
            level: 1,
            len_hand: 8,
            len_max_current_special_cards: 1,
            len_current_special_cards: 0,
            current_jokers: 0,
            len_max_current_power_ups: 4,
            state: GameState::IN_GAME,
            cash: 0
        }
    }
}
