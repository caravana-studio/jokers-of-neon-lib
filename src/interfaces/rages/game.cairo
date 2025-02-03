use jokers_of_neon_lib::models::status::game::game::Game;

#[starknet::interface]
trait IRageGame<T> {
    fn equip(self: @T, game: Game) -> Game;
    fn unequip(self: @T, game: Game) -> Game;
}
