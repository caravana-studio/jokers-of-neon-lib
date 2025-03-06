use starknet::ContractAddress;

#[derive(Copy, Drop, Introspect, Serde)]
pub struct PlayRulesConfig {
    pub card_play_quantity: u8,
    pub flush_cards_needed: u8,
    pub straight_cards_needed: u8,
}
