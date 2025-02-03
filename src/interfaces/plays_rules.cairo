use jokers_of_neon_lib::models::data::poker_hand::PokerHand;

#[starknet::interface]
trait ISpecialPlaysRulesType<T> {
    fn apply(ref self: T) -> (PokerHand, u32);
}
