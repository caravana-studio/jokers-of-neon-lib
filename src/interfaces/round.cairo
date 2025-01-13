use jokers_of_neon_lib::models::special_type::SpecialType;
use jokers_of_neon_lib::models::status::round::round::Round;

#[starknet::interface]
trait ISpecialRoundType<T> {
    fn apply(ref self: T, round: Round) -> Round;
    fn get_id(self: @T) -> u32;
    fn get_type(self: @T) -> SpecialType;
}
