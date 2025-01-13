#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct Round {
    #[key]
    game_id: u32,
    player_score: u32,
    level_score: u32,
    hands: u8,
    discard: u8
}

