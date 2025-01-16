#[starknet::interface]
trait IRagesInfo<T> {
    fn get_rages_ids_all(self: @T) -> Array<u32>;
}
