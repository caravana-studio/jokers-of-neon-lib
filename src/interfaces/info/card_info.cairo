#[starknet::interface]
trait ICardInfo<T> {
    fn get_initial_deck(self: @T) -> Array<u32>;
}