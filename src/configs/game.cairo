#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct GameConfig {
    pub plays: u32,
    pub discards: u32,
    pub max_special_slots: u32,
    pub power_up_slots: u32,
    pub max_power_up_slots: u32,
    pub hand_len: u32,
    pub start_cash: u32,
    pub start_special_slots: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct ShopConfig {
    pub traditional_cards_quantity: u32,
    pub modifiers_cards_quantity: u32,
    pub specials_cards_quantity: u32,
    pub loot_boxes_quantity: u32,
    pub power_ups_quantity: u32,
    pub poker_hands_quantity: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct ShopPricesConfig {
    pub initial_price_slot: u32,
    pub initial_price_of_burn: u32,
    pub initial_price_of_reroll: u32,
    pub number_of_burns_per_store: u32,
    pub number_of_rerolls_per_store: u32,
    pub price_of_traditional_cards: u32,
    pub price_of_modifier_cards: u32,
}

#[derive(Copy, Drop, Serde)]
pub struct RoundRewardConfig {
    pub reward: u32,
    pub reward_per_discards: u32,
    pub reward_per_plays: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct RageRoundConfig {
    pub initial_probability: u16,
    pub increment_by_round: u16,
    pub rages_quantity_for_x_round: u8,
    pub max_active_rages: u8,
    pub min_round_level_before_activate: u8,
    pub level_cooldown: u8,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct EarningCashConfig {
    pub base: u32,
    pub round_reward: u32,
    pub remaining_plays_reward: u32,
    pub remaining_discards_reward: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct DiscountConfig {
    pub max_discounts_per_shop: u32,
    pub tries: u32,
}
