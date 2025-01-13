use jokers_of_neon_lib::models::power_up::PowerUp;
use jokers_of_neon_lib::models::special_type::SpecialType;

#[starknet::interface]
trait ISpecialPowerUp<T> {
    fn execute(ref self: T, power_up: PowerUp) -> (u32, u32, u32);
    fn get_id(self: @T) -> u32;
    fn get_type(self: @T) -> SpecialType;
}
