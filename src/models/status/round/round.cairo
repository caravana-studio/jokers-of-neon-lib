#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct Round {
    #[key]
    game_id: u64,
    player_score: u32,
    level_score: u32,
    remaining_plays: u16,
    remaining_discards: u16,
}

