use jokers_of_neon_lib::models::status::game::game::Game;

#[starknet::interface]
trait IRageGame<T> {
    fn equip(self: @T) -> Game;
    fn unequip(self: @T) -> Game;
}
