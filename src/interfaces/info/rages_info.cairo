#[starknet::interface]
trait IRagesInfo<T> {
    fn get_rages_ids_all(self: @T) -> Array<u32>;
    fn get_rages_info(self: @T) -> (Span<Span<u32>>, Span<u32>);
}
