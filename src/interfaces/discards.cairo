use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
trait ISpecialDiscardSpecificType<T> {
    fn execute(ref self: T, game_context: GameContext) -> (i32, i32, i32); // (points, multi, cash)
}
