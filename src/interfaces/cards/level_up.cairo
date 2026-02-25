use jokers_of_neon_lib::models::status::game::player::PlayerLevelPokerHand;
use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
pub trait ILevelUp<T> {
    /// Applies level up effects to poker hands based on special card effects.
    ///
    /// # Parameters
    /// - `context`: The current game context containing game state, round info, and played cards
    /// - `player_level_poker_hands`: The current poker hand levels for the player
    ///
    /// # Returns
    /// An array of `PlayerLevelPokerHand` with potentially modified levels, points, and multipliers.
    fn level_up(
        ref self: T, context: GameContext, player_level_poker_hands: Span<PlayerLevelPokerHand>,
    ) -> Array<PlayerLevelPokerHand>;
}
