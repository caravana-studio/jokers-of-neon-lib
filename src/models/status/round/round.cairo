#[derive(Copy, Drop, Introspect, Serde)]
#[dojo::model]
struct Round {
    #[key]
    game_id: u32,
    player_score: u32,
    level_score: u32,
    remaining_plays: u16,
    remaining_discards: u16,
}

