#[starknet::interface]
pub trait ICardInfoInstance<T> {
    fn values_for_instance(self: @T, game_id: u64, special_instance_id: u64) -> (i32, i32, i32);
}
