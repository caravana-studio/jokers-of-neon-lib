#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct CurrentHand {
    #[key]
    pub game_id: u64,
    pub cards: Span<u32>,
}
