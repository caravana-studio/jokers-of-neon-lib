use jokers_of_neon_lib::models::data::power_up::PowerUp;
use jokers_of_neon_lib::models::special_type::SpecialType;

#[starknet::interface]
trait ISpecialPowerUp<T> {
    fn execute(ref self: T, power_up: PowerUp) -> (i32, i32, i32);
    fn get_id(self: @T) -> u32;
    fn get_type(self: @T) -> SpecialType;
}
