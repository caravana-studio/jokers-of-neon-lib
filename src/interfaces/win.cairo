use jokers_of_neon_lib::models::data::card::Card;
use jokers_of_neon_lib::models::special_type::SpecialType;
use jokers_of_neon_lib::models::status::game::game::Game;

#[starknet::interface]
trait ISpecialWinType<T> {
    fn execute(ref self: T, game: Game, current_hand: Span<Card>) -> Game;
    fn get_id(self: @T) -> u32;
    fn get_type(self: @T) -> SpecialType;
}
