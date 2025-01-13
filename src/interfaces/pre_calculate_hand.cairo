use jokers_of_neon_lib::models::data::card::Card;
use jokers_of_neon_lib::models::special_type::SpecialType;

#[starknet::interface]
trait ISpecialPreCalculateHand<T> {
    fn apply(ref self: T, cards: Array<Card>) -> Array<Card>;
    fn get_id(self: @T) -> u32;
    fn get_type(self: @T) -> SpecialType;
}
