use starknet::ContractAddress;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct ShopConfig {
    #[key]
    pub id: u32,
    pub mod_id: u32,
    pub owner: ContractAddress,
    pub traditional_cards_quantity: u16,
    pub modifiers_cards_quantity: u16,
    pub specials_cards_quantity: u16,
    pub loot_boxes_quantity: u16,
    pub power_ups_quantity: u16,
}
