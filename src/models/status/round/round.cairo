use jokers_of_neon_lib::models::status::game::rage::RageRound;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct Round {
    #[key]
    game_id: u64,
    player_score: u32,
    target_score: u32,
    remaining_plays: u16,
    remaining_discards: u16,
    rage: Option<RageRound>,
}

