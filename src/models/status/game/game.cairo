use starknet::ContractAddress;

#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq)]
pub enum GameState {
    IN_GAME,
    AT_SHOP,
    FINISHED,
    OPEN_BLISTER_PACK,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct Game {
    #[key]
    pub id: u64,
    pub mod_id: felt252,
    pub state: GameState,
    pub owner: ContractAddress,
    pub player_name: felt252,
    pub player_score: u32,
    pub level: u32,
    pub current_node_id: u32,
    pub hand_len: u32,
    pub plays: u32,
    pub discards: u32,
    pub current_specials_len: u32,
    pub special_slots: u32,
    pub cash: u32,
    pub shop_config_id: u32,
    pub available_rerolls: u32,
    pub last_node_id: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct CurrentSpecialCards {
    #[key]
    pub game_id: u64,
    #[key]
    pub idx: u32,
    pub effect_card_id: u32,
    pub is_temporary: bool,
    pub remaining: u32,
    pub selling_price: u32,
}
