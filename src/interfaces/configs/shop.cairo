use jokers_of_neon_lib::configs::game::ShopPricesConfig;
use jokers_of_neon_lib::models::status::shop::shop::ShopConfig;

#[starknet::interface]
trait IShopConfig<T> {
    fn get_shop_prices_config(self: @T) -> ShopPricesConfig;
    fn get_shop_configs_ids_all(self: @T) -> Array<u32>;
    fn get_shop_configs_info(self: @T) -> (Span<Span<u32>>, Span<u32>);
    fn get_shop_config(self: @T, shop_config_id: u32) -> ShopConfig;
}
