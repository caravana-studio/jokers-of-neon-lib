use jokers_of_neon_lib::models::data::poker_hand::{LevelPokerHand, PokerHand};

#[starknet::interface]
trait IPokerHandInfo<T> {
    fn get_poker_hands_ids_all(self: @T) -> Array<PokerHand>;
    fn get_initial_poker_hands(self: @T) -> Array<LevelPokerHand>;
    fn get_poker_hands_info(self: @T) -> (Span<Span<u32>>, Span<u32>, Span<u32>, Span<u32>, Span<u32>);
}
