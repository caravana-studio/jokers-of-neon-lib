use jokers_of_neon_lib::models::special_type::SpecialType;
use jokers_of_neon_lib::models::status::game::game::Game;

#[starknet::interface]
trait ISpecialGameTypeSpecificType<T> {
    fn equip(ref self: T, game: Game) -> Game;
    fn unequip(ref self: T, game: Game) -> Game;
    fn get_id(ref self: T) -> u32;
    fn get_type(ref self: T) -> SpecialType;
}
