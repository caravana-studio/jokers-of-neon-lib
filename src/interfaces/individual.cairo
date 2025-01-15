use jokers_of_neon_lib::models::data::card::Card;
use jokers_of_neon_lib::models::special_type::SpecialType;

#[starknet::interface]
trait ISpecialIndividual<T> {
    fn condition(ref self: T, card: Card) -> bool;
    fn execute(ref self: T) -> (i32, i32, i32); // (points, multi, cash)
    fn get_id(ref self: T) -> u32;
    fn get_type(ref self: T) -> SpecialType;
}
