use starknet::ContractAddress;

#[derive(Drop, Serde, Debug)]
#[dojo::model]
pub struct Profile {
    #[key]
    pub address: ContractAddress,
    pub username: ByteArray,
    pub total_xp: u256,
    pub xp: u256,
    pub level: u32,
    pub available_games: u8,
    pub max_available_games: u8,
    pub daily_streak: u16,
    pub banned: bool,
    pub badges_ids: Span<u32>,
    pub avatar_id: u16,
}

#[derive(Copy, Drop, Serde, Debug)]
#[dojo::model]
pub struct PlayerStats {
    #[key]
    pub address: ContractAddress,
    // Games
    pub games_played: u32,
    pub games_won: u32,
    // Plays
    pub high_card_played: u32,
    pub pair_played: u32,
    pub two_pair_played: u32,
    pub three_of_a_kind_played: u32,
    pub four_of_a_kind_played: u32,
    pub five_of_a_kind_played: u32,
    pub full_house_played: u32,
    pub flush_played: u32,
    pub straight_played: u32,
    pub straight_flush_played: u32,
    pub royal_flush_played: u32,
    // Store
    pub loot_boxes_purchased: u32,
    pub cards_purchased: u32,
    pub specials_purchased: u32,
    pub specials_sold: u32,
    pub power_ups_purchased: u32,
    pub level_ups_purchased: u32,
    pub modifiers_purchased: u32,
    pub rerolls_purchased: u32,
    pub burn_purchased: u32,
}

impl PlayerStatsDefault of Default<PlayerStats> {
    fn default() -> PlayerStats {
        PlayerStats {
            address: 0.try_into().unwrap(),
            games_played: 0,
            games_won: 0,
            high_card_played: 0,
            pair_played: 0,
            two_pair_played: 0,
            three_of_a_kind_played: 0,
            four_of_a_kind_played: 0,
            five_of_a_kind_played: 0,
            full_house_played: 0,
            flush_played: 0,
            straight_played: 0,
            straight_flush_played: 0,
            royal_flush_played: 0,
            loot_boxes_purchased: 0,
            cards_purchased: 0,
            specials_purchased: 0,
            specials_sold: 0,
            power_ups_purchased: 0,
            level_ups_purchased: 0,
            modifiers_purchased: 0,
            rerolls_purchased: 0,
            burn_purchased: 0,
        }
    }
}

#[derive(Drop, Serde, Debug)]
#[dojo::model]
pub struct ProfileLevelConfig {
    #[key]
    pub level: u32,
    pub required_xp: u256,
}
