use jokers_of_neon_lib::models::data::poker_hand::PokerHand;
use jokers_of_neon_lib::models::special_type::SpecialType;

#[starknet::interface]
trait ISpecialPlaysRulesType<T> {
    fn apply(ref self: T) -> (PokerHand, u32);
    fn get_id(self: @T) -> u32;
    fn get_type(self: @T) -> SpecialType;
}
