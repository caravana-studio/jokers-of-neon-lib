use jokers_of_neon_lib::models::data::card::Card;

#[starknet::interface]
trait ISpecialIndividual<T> {
    fn condition(ref self: T, card: Card) -> bool;
    fn execute(ref self: T) -> (i32, i32, i32); // (points, multi, cash)
}
