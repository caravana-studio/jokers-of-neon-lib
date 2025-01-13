use jokers_of_neon_lib::models::game::Game;

#[starknet::interface]
trait ISpecialGameTypeSpecificType<T> {
    fn equip(ref self: T, game: Game) -> Game;
    fn unequip(ref self: T, game: Game) -> Game;
    fn get_id(ref self: T) -> u32;
}
