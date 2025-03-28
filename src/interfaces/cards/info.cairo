#[starknet::interface]
trait ICardInfo<T> {
    fn info(ref self: T, key: Option< felt252>) -> felt252;
}
