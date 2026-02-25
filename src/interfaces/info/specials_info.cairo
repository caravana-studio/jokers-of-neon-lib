#[starknet::interface]
pub trait ISpecialsInfo<T> {
    fn get_specials_ids_all(self: @T) -> Array<u32>;
    fn get_base_specials_shop_info(self: @T) -> (Span<Span<u32>>, Span<u32>, Span<u32>);
    fn get_season_specials_shop_info(self: @T) -> (Span<Span<u32>>, Span<u32>, Span<u32>);
    fn get_special_info(self: @T, special_id: u32) -> (u32, u32, u32);
}
