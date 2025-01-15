use jokers_of_neon_lib::models::play_info::PlayInfo;
use jokers_of_neon_lib::models::special_type::SpecialType;

#[starknet::interface]
trait ISpecialDiscardSpecificType<T> {
    fn execute(ref self: T, play_info: PlayInfo) -> (i32, i32, i32); // (points, multi, cash)
    fn get_id(ref self: T) -> u32;
    fn get_type(ref self: T) -> SpecialType;
}
