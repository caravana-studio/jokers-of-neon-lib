use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
pub trait IFreeAction<T> {
    /// Returns the chance (0-100) that a play or discard action is not consumed.
    fn get_free_chance(ref self: T, context: GameContext) -> u32;
}
