use jokers_of_neon_lib::models::data::card::Card;

#[starknet::interface]
trait ISpecialCondition<T> {
    /// Evaluates whether a given card meets a specific condition.
    ///
    /// # Parameters
    /// - `raw_data`: Data that can be converted to Card, Power Up or other struct depending on the execution context.
    ///
    /// # Returns
    /// - `bool`: `true` if the condition of execution is met, `false` otherwise.
    fn condition(self: @T, raw_data: felt252) -> bool;
}
