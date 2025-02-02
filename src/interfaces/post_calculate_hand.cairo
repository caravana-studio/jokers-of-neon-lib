use jokers_of_neon_lib::models::special_type::SpecialType;
use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
trait ISpecialPostPlayType<T> {
    fn apply(ref self: T, game_context: GameContext) -> GameContext;
    fn get_id(ref self: T) -> u32;
    fn get_type(ref self: T) -> SpecialType;
}
