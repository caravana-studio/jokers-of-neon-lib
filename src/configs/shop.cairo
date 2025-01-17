use starknet::ContractAddress;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct ShopConfig {
    pub traditional_cards_quantity: u32,
    pub modifiers_cards_quantity: u32,
    pub specials_cards_quantity: u32,
    pub loot_boxes_quantity: u32,
    pub power_ups_quantity: u32,
    pub poker_hands_quantity: u32,
}
