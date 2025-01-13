use jokers_of_neon_lib::models::data::poker_hand::PokerHand;
use jokers_of_neon_lib::models::special_type::SpecialType;

#[starknet::interface]
trait ISpecialLevelUpPlaysType<T> {
    fn equip(ref self: T) -> Array<(PokerHand, u32)>;
    fn unequip(ref self: T) -> Array<(PokerHand, u32)>;
    fn get_id(ref self: T) -> u32;
    fn get_type(ref self: T) -> SpecialType;
}
