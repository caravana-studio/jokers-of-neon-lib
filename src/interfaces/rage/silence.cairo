use jokers_of_neon_lib::models::data::card::{Suit, Value};
use jokers_of_neon_lib::models::rage_type::RageType;

#[starknet::interface]
trait IRageSilence<T> {
    fn silenced_suits(self: @T) -> Span<Suit>;
    fn silenced_values(self: @T) -> Span<Value>;
    fn silenced_ids(self: @T) -> Span<u32>;
}
