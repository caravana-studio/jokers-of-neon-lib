mod constants;
mod interfaces {
    mod base;
    mod configurator;
    mod current_hand;
    mod discards;
    mod game;
    mod individual;
    mod play_levels;
    mod plays_rules;
    mod post_calculate_hand;
    mod power_up;
    mod pre_calculate_hand;
    mod registrator;
    mod round;
    mod round_state;
    mod shop;
    mod win;
    mod rage {
        mod base;
        mod debuff;
        mod game;
        mod round;
        mod silence;
    }
}

mod models {
    mod play_info;
    mod rage_type;
    mod special_type;
    mod data {
        mod blister_pack;
        mod card;
        mod effect_card;
        mod game_deck;
        mod game_mod;
        mod game_point_event;
        mod poker_hand;
        mod power_up;
        mod special_data;
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
