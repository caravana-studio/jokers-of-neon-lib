use jokers_of_neon_lib::models::data::poker_hand::PokerHand;

#[starknet::interface]
trait ISpecialLevelUpPlaysType<T> {
    fn equip(ref self: T) -> Array<(PokerHand, u32)>;
    fn unequip(ref self: T) -> Array<(PokerHand, u32)>;
}
