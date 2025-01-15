use jokers_of_neon_lib::models::data::loot_box::LootBox;

#[starknet::interface]
trait ISpecialsInfo<T> {
    fn get_specials_ids_all(self: @T) -> Array<u32>;
    fn get_specials_shop_info(self: @T) -> (Span<Span<u32>>, Span<u32>, Span<u32>);
}
