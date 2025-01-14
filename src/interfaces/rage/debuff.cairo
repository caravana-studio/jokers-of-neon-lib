use jokers_of_neon_lib::models::data::card::{Suit, Value};
use jokers_of_neon_lib::models::rage_type::RageType;

#[starknet::interface]
trait IRageDebuff<T> {
    fn debuffed_suits(self: @T) -> Span<Suit>;
    fn debuffed_values(self: @T) -> Span<Value>;
    fn debuffed_ids(self: @T) -> Span<u32>;
    fn debuff_percentage(self: @T) -> u32;
}
