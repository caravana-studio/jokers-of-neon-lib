mod random;
mod constants {
    mod card;
    mod modifiers;
    mod two_pow;
}

mod configs {
    mod game;
    mod play_rules;
}

mod interfaces {
    mod base;
    mod configs {
        mod game;
        mod shop;
    }
    mod rages {
        mod debuff;
        mod silence;
    }
    mod cards {
        mod condition;
        mod converter;
        mod equipable;
        mod executable;
    }
    mod info {
        mod card_info;
        mod loot_boxes_info;
        mod poker_hands_info;
        mod rages_info;
        mod specials_info;
    }
}

mod events {
    mod card_play_event;
}

mod models {
    mod card_type;
    mod tracker;
    mod data {
        mod card;
        mod effect_card;
        mod game_deck;
        mod loot_box;
        mod mod_tracker;
        mod poker_hand;
        mod power_up;
    }
    mod status {
        mod game {
            mod game;
            mod player;
            mod rage;
        }
        mod round {
            mod current_hand_card;
            mod round;
        }
        mod shop {
            mod shop;
        }
    }
}
