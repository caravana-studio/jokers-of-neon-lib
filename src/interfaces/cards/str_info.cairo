#[starknet::interface]
pub trait ICardStrInfo<T> {
    fn info(self: @T, game_id: u64) -> ByteArray;
}
