use jokers_of_neon_lib::models::status::{game::game::Game, round::round::Round};

#[starknet::interface]
trait ISpecialRoundState<T> {
    fn execute(ref self: T, game: Game, round: Round) -> (i32, i32, i32); // (points, multi, cash)
}
