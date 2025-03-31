#[starknet::interface]
trait ICardInfo<T> {
    /// Retrieves game-related values, including points, multiplier, and cash.
    ///
    /// # Parameters
    /// - `game_id`: The identifier of the game.
    ///
    /// # Returns
    /// - A tuple `(points, multiplier, cash)`:
    ///   - `points (i32)`: The number of points.
    ///   - `multiplier (i32)`: The multiplier applied to the points.
    ///   - `cash (i32)`: The amount of cash available.
    fn values(self: @T, game_id: u32) -> (i32, i32, i32);
}
