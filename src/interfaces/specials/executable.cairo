use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
trait ISpecialExecutable<T> {
    /// Executes a special action within the game context.
    ///
    /// # Parameters
    /// - `context`: The current game state
    ///
    /// # Returns
    /// A tuple containing:
    /// - `points` (i32): The points to be added to the global points calculation.
    /// - `multi` (i32): The multiplier to be added to the global multi calculation.
    /// - `cash` (i32): The cash value to be added to the global cash calculation.
    ///
    /// These values will be accumulated in a global element when the card is executed.
    fn execute(ref self: T, context: GameContext) -> (i32, i32, i32);
}
