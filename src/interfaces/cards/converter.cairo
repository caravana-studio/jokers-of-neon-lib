use jokers_of_neon_lib::models::data::card::Card;

#[starknet::interface]
trait ICardConverter<T> {
    /// Applies a transformation to a set of cards.
    ///
    /// # Parameters
    /// - `self`: A reference to the implementing type.
    /// - `card`: A card to be transformed.
    ///
    /// # Returns
    /// - `Card`: The transformed card after applying the operation.
    fn apply(ref self: T, card: Card) -> Card;
}
