use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
trait ICardEquipable<T> {
    /// Equips a card, modifying the game context.
    ///
    /// # Parameters
    /// - `context`: The current game state before equipping.
    ///
    /// # Returns
    /// - `GameContext`: The updated game state after equipping the card.
    fn equip(ref self: T, context: GameContext) -> GameContext;

    /// Unequips a card, reverting or modifying changes in the game context.
    ///
    /// # Parameters
    /// - `context`: The current game state before unequipping.
    ///
    /// # Returns
    /// - `GameContext`: The updated game state after unequipping the card.
    fn unequip(ref self: T, context: GameContext) -> GameContext;
}
