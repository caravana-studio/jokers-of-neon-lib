#[derive(Copy, Drop, Serde)]
pub struct LootBox {
    #[key]
    pub id: u32,
    pub cost: u32,
    pub name: felt252,
    pub probability: u32,
    pub size: u8,
    pub cards: Span<Span<u32>>, // cards: [content_1: [], content_2: [], ... ]
    pub probs: Span<u32> // probs [ prob_content_1, prob_content_2, ... ] the sum of the probabilities must be 100
}
