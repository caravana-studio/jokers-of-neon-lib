pub mod random;
pub mod constants {
    pub mod card;
    pub mod modifiers;
    pub mod poker_hand;
    pub mod two_pow;
    pub mod utils;
}

pub mod configs {
    pub mod game;
    pub mod map;
    pub mod play_rules;
}

pub mod interfaces {
    pub mod base;
    pub mod cartridge;
    pub mod configs {
        pub mod game;
        pub mod shop;
    }
    pub mod rages {
        pub mod debuff;
        pub mod silence;
    }
    pub mod cards {
        pub mod burnable;
        pub mod condition;
        pub mod converter;
        pub mod end_round;
        pub mod equipable;
        pub mod executable;
        pub mod free_action;
        pub mod info;
        pub mod level_up;
        pub mod shop_discount;
        pub mod shop_modifier;
    }
    pub mod info {
        pub mod card_info;
        pub mod loot_boxes_info;
        pub mod poker_hands_info;
        pub mod rages_info;
        pub mod specials_info;
    }
}

pub mod events {
    pub mod card_activate_event;
    pub mod card_play_event;
}

pub mod models {
    pub mod card_type;
    pub mod tracker;
    pub mod data {
        pub mod card;
        pub mod effect_card;
        pub mod game_deck;
        pub mod loot_box;
        pub mod map;
        pub mod mod_tracker;
        pub mod poker_hand;
        pub mod power_up;
    }
    pub mod external {
        pub mod nft;
        pub mod profile;
    }
    pub mod status {
        pub mod game {
            pub mod game;
            pub mod player;
            pub mod rage;
        }
        pub mod round {
            pub mod current_hand_card;
            pub mod round;
        }
        pub mod shop {
            pub mod shop;
        }
    }
}
