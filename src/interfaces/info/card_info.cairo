#[starknet::interface]
pub trait ICardInfo<T> {
    fn get_initial_deck(self: @T) -> Array<u32>;
}
