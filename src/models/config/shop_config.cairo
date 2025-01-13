#[derive(Copy, Drop, Serde)]
pub struct ShopConfig {
    pub initial_reroll_cost: u32,
    pub len_item_common_cards: u32,
    pub len_item_modifier_cards: u32,
    pub len_item_special_cards: u32,
    pub len_item_poker_hands: u32,
    pub len_item_blister_pack: u32,
    pub len_item_power_ups: u32,
}
