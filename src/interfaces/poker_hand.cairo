use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
trait ISpecialPokerHand<T> {
    fn execute(
        ref self: T, game_context: GameContext,
    ) -> ((i32, i32), (i32, i32, Span<(u32, i32)>), (i32, i32, Span<(u32, i32)>)); // (quantity, special_quantity, hand)
}
