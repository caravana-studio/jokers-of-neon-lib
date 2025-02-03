use jokers_of_neon_lib::models::status::round::round::Round;

#[starknet::interface]
trait ISpecialRoundType<T> {
    fn apply(ref self: T, round: Round) -> Round;
}
