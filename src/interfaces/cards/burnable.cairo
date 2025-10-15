#[starknet::interface]
pub trait ICardBurnable<T> {
    /// Executes an action when the burn actions is executed.
    ///
    /// # Parameters
    /// - `raw_data`: Data that can be converted to Card, Power Up or other struct depending on the execution context.
    fn execute(ref self: T, raw_data: felt252);
}
