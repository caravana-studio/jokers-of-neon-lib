use jokers_of_neon_lib::models::game::Game;
use jokers_of_neon_lib::models::round::Round;
use jokers_of_neon_lib::models::special_type::SpecialType;

#[starknet::interface]
trait ISpecialRoundState<T> {
    fn execute(ref self: T, game: Game, round: Round) -> (u32, u32, u32); // (points, multi, cash)
    fn get_id(ref self: T) -> u32;
    fn get_type(ref self: T) -> SpecialType;
}
