use jokers_of_neon_lib::models::tracker::GameContext;

#[derive(Copy, Drop, Serde)]
pub struct SpecialGenerationRequest {
    pub quantity: u32,
    pub remaining: u32,
}

#[starknet::interface]
pub trait IEndRound<T> {
    fn on_end_round(ref self: T, context: GameContext) -> SpecialGenerationRequest;
}
