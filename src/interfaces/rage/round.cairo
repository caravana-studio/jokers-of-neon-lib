use jokers_of_neon_lib::models::status::round::round::Round;

#[starknet::interface]
trait IRageRound<T> {
    fn equip(self: @T) -> Round;
    fn unequip(self: @T) -> Round;
}
