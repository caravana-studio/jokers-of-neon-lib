mod random;
mod constants {
    mod card;
    mod modifiers;
}

mod configs {
    mod game;
    mod play_rules;
    mod round_rewards;
    mod shop;
}

mod interfaces {
    mod base;
    mod discards;
    mod game;
    mod individual;
    mod play_levels;
    mod plays_rules;
    mod poker_hand;
    mod post_calculate_hand;
    mod power_up;
    mod pre_calculate_hand;
    mod registrator;
    mod round;
    mod round_state;
    mod shop;
    mod win;
    mod configs {
        mod game;
        mod play_rules;
        mod shop;
    }
    mod rages {
        mod debuff;
        mod game;
        mod round;
        mod silence;
    }
    mod specials {
        mod condition;
        mod converter;
        mod equipable;
        mod executable;
    }
    mod info {
        mod card_info;
        mod loot_boxes_info;
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
