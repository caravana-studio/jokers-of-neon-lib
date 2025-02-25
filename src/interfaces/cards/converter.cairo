use jokers_of_neon_lib::models::data::card::Card;
use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
trait ICardConverter<T> {
    /// Applies a transformation to a set of cards.
    ///
    /// # Parameters
    /// - `self`: A reference to the implementing type.
    /// - `context`: The current game state
    /// - `card`: A card to be transformed.
    ///
    /// # Returns
    /// - `Card`: The transformed card after applying the operation.
    fn apply(ref self: T, context: GameContext, card: Card) -> Card;
}
