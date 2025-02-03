use jokers_of_neon_lib::models::{data::card::Card, status::game::game::Game};

#[starknet::interface]
trait ISpecialWinType<T> {
    fn execute(ref self: T, game: Game, current_hand: Span<Card>) -> Game;
}
