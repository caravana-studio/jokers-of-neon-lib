use jokers_of_neon_lib::models::status::game::game::Game;

#[starknet::interface]
trait ISpecialGameTypeSpecificType<T> {
    fn equip(ref self: T, game: Game) -> Game;
    fn unequip(ref self: T, game: Game) -> Game;
}
