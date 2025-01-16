use starknet::ContractAddress;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct PlayRulesConfig {
    #[key]
    pub id: u32,
    pub mod_id: u32,
    pub owner: ContractAddress,
    pub current_hand_len: u16,
    pub card_play_quantity: u8,
    pub flush_cards_needed: u8,
    pub straight_cards_needed: u8
}
