use jokers_of_neon_lib::models::status::shop::shop::ShopConfig;
use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
pub trait IShopModifier<T> {
    fn modify_shop_config(ref self: T, context: GameContext, shop_config: ShopConfig) -> ShopConfig;
}
