#[starknet::interface]
trait ICardInfo<T> {
    /// Retrieves information associated with the given key.
    ///
    /// # Parameters
    /// - `key`: An optional `felt252` key to look up specific information.
    ///
    /// # Returns
    /// - A `felt252` value representing the requested information.
    fn info(self: @T, key: Option<felt252>) -> felt252;

    /// Returns all available keys associated with this instance.
    ///
    /// # Returns
    /// - A `Span<felt252>` containing all stored keys.
    fn keys(self: @T) -> Span<felt252>;
}
