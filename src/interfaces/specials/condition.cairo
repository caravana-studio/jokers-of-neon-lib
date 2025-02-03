use jokers_of_neon_lib::models::data::card::Card;

#[starknet::interface]
trait ISpecialCondition<T> {
    /// Evaluates whether a given card meets a specific condition.
    ///
    /// # Parameters
    /// - `card`: The card to be evaluated.
    ///
    /// # Returns
    /// - `bool`: `true` if the condition of execution is met, `false` otherwise.
    fn condition(self: @T, card: Card) -> bool;
}
