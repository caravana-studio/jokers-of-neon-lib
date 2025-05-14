use jokers_of_neon_lib::models::data::card::{Suit, Value};
use jokers_of_neon_lib::models::data::poker_hand::PokerHand;
use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
trait IRageSilence<T> {
    fn silenced_suits(self: @T) -> Span<Suit>;
    fn silenced_values(self: @T) -> Span<Value>;
    fn silenced_ids(self: @T) -> Span<u32>;
    fn silenced_hands(self: @T, context: GameContext) -> Span<PokerHand>;
}
