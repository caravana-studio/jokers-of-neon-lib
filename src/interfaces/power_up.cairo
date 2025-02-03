use jokers_of_neon_lib::models::data::power_up::PowerUp;

#[starknet::interface]
trait ISpecialPowerUp<T> {
    fn execute(ref self: T, power_up: PowerUp) -> (i32, i32, i32);
}
