use jokers_of_neon_lib::models::data::card::Card;

#[starknet::interface]
trait ICardConverter<T> {
    /// Applies a transformation to a set of cards.
    ///
    /// # Parameters
    /// - `self`: A reference to the implementing type.
    /// - `cards`: An array of cards to be transformed.
    ///
    /// # Returns
    /// - `Array<Card>`: The transformed set of cards after applying the operation.
    fn apply(ref self: T, cards: Array<Card>) -> Array<Card>;
}
