use jokers_of_neon_lib::models::data::loot_box::LootBox;

#[starknet::interface]
trait ILootBoxesInfo<T> {
    fn get_loot_boxes_ids_all(self: @T) -> Array<u32>;
    fn get_loot_boxes_shop_info(self: @T) -> (Span<Span<u32>>, Span<u32>, Span<u32>);
    fn get_loot_box_items(self: @T, loot_box_id: u32) -> LootBox;
}
