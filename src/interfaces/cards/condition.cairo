use jokers_of_neon_lib::models::data::card::Card;
use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
trait ICardCondition<T> {
    /// Evaluates whether a given card meets a specific condition.
    ///
    /// # Parameters
    /// - `context`: The current game state
    /// - `raw_data`: Data that can be converted to Card, Power Up or other struct depending on the execution context.
    ///
    /// # Returns
    /// - `bool`: `true` if the condition of execution is met, `false` otherwise.
    fn condition(self: @T, context: GameContext, raw_data: felt252) -> bool;
}
