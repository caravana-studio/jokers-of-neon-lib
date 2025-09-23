pub fn is_common_card(card_id: u32) -> bool {
    card_id >= 0 && card_id <= 53
}

pub fn is_neon_card(card_id: u32) -> bool {
    card_id >= 200 && card_id <= 253
}

pub fn is_special_card(card_id: u32) -> bool {
    card_id >= 10000 && card_id < 20000
}

pub fn is_rage_card(card_id: u32) -> bool {
    card_id >= 20000 && card_id < 30000
}

pub fn is_modifier_card(card_id: u32) -> bool {
    card_id >= 600 && card_id <= 700
}

pub fn is_power_up(card_id: u32) -> bool {
    card_id >= 800 && card_id <= 900
}
