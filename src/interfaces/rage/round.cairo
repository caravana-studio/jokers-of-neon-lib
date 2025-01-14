use jokers_of_neon_lib::models::status::round::round::Round;

#[starknet::interface]
trait IRageRound<T> {
    fn apply(self: @T, round: Round) -> Round;
}
