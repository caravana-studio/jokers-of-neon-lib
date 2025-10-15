#[starknet::interface]
pub trait ICardBurnable<T> {
    /// Executes an action when the burn actions is executed.
    ///
    /// # Parameters
    /// - `game_id`: The identifier of the game.
    /// - `raw_data`: Data that can be converted to Card, Power Up or other struct depending on the execution context.
    fn burn(ref self: T, game_id: u64, raw_data: felt252);
}
