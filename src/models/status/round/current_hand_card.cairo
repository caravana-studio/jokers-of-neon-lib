#[derive(Copy, Drop, Serde, DojoStore)]
#[dojo::model]
pub struct CurrentHand {
    #[key]
    pub game_id: u64,
    pub cards: Span<u32>,
}
