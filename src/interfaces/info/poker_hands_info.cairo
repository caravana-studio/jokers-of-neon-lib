use jokers_of_neon_lib::models::data::poker_hand::{LevelPokerHand, PokerHand};

#[starknet::interface]
trait IPokerHandsInfo<T> {
    fn get_poker_hands_ids_all(self: @T) -> Array<u32>;
    fn get_initial_poker_hands(self: @T) -> Array<LevelPokerHand>;
    fn get_poker_hands_info(self: @T) -> (Span<Span<PokerHand>>, Span<u32>, Span<u32>, Span<u32>, Span<u32>);
    fn get_poker_hand_data(self: @T, poker_hand: PokerHand, level: u32) -> (u32, u32);
}
