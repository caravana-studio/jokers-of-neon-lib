use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
trait ISpecialPostPlayType<T> {
    fn apply(ref self: T, game_context: GameContext) -> GameContext;
}
