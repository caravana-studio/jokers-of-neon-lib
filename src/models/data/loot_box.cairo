#[derive(Copy, Drop, Serde)]
struct LootBox {
    #[key]
    id: u32,
    cost: u32,
    name: felt252,
    probability: u32,
    size: u8,
    cards: Span<Span<u32>>, // cards: [content_1: [], content_2: [], ... ]
    probs: Span<u32>, // probs [ prob_content_1, prob_content_2, ... ] the sum of the probabilities must be 100
}
