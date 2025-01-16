use starknet::ContractAddress;

#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq)]
pub enum GameState {
    IN_GAME,
    AT_SHOP,
    FINISHED,
    OPEN_BLISTER_PACK
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct Game {
    #[key]
    pub id: u32,
    pub mod_id: u32,
    pub owner: ContractAddress,
    pub player_name: felt252,
    pub player_score: u32,
    pub round: u32,
    pub len_hand: u32,
    pub len_current_special_cards: u32,
    pub state: GameState,
    pub cash: u32
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
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
            mod_id: 0,
            owner: Zeroable::zero(),
            player_name: Zeroable::zero(),
            round: 1,
            player_score: 0,
            len_hand: 8,
            len_current_special_cards: 0,
            state: GameState::IN_GAME,
            cash: 0
        }
    }
}
