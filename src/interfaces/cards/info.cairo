#[starknet::interface]
trait ICardInfo<T> {
    /// Retrieves information associated with the given key for a specific game.
    ///
    /// # Parameters
    /// - `game_id`: The identifier of the game.
    /// - `key`: An optional `felt252` key to look up specific information.
    ///
    /// # Returns
    /// - A `felt252` value representing the requested information.
    fn info(self: @T, game_id: u32, key: Option<felt252>) -> felt252;

    /// Returns all available keys associated with this instance.
    ///
    /// # Returns
    /// - A `Span<felt252>` containing all stored keys.
    fn keys(ref self: @T) -> Span<felt252>;
}