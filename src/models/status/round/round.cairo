#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Round {
    #[key]
    pub game_id: u64,
    pub current_score: u32,
    pub target_score: u32,
    pub remaining_plays: u16,
    pub remaining_discards: u16,
    pub rages: Span<u32>,
}

