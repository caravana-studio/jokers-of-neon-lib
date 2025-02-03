use jokers_of_neon_lib::models::special_type::SpecialType;
use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
trait ISpecialDiscardSpecificType<T> {
    fn execute(ref self: T, game_context: GameContext) -> (i32, i32, i32); // (points, multi, cash)
    fn get_id(ref self: T) -> u32;
    fn get_type(ref self: T) -> SpecialType;
}
