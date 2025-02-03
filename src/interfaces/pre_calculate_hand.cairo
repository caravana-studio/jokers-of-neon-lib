use jokers_of_neon_lib::models::data::card::Card;

#[starknet::interface]
trait ISpecialPreCalculateHand<T> {
    fn apply(ref self: T, cards: Array<Card>) -> Array<Card>;
}
