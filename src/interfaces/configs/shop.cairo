use jokers_of_neon_lib::configs::shop::ShopConfig;

#[starknet::interface]
trait IShopConfig<T> {
    fn get_shop_config(self: @T) -> ShopConfig;
}
