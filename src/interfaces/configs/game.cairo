use jokers_of_neon_lib::configs::game::{
    DiscountConfig, GameConfig, RageRoundConfig, RoundRewardConfig, ShopPricesConfig,
};

#[starknet::interface]
trait IGameConfig<T> {
    fn get_game_config(self: @T) -> GameConfig;
    fn get_shop_prices_config(self: @T) -> ShopPricesConfig;
    fn get_round_reward_config(self: @T) -> RoundRewardConfig;
    fn get_rage_round_config(self: @T) -> RageRoundConfig;
    fn get_discount_config(self: @T) -> DiscountConfig;
    fn calculate_round_score(self: @T, round: u32) -> u32;
    fn calculate_price_of_slot(self: @T, count_slots: u32) -> u32;
    fn calculate_price_of_burn(self: @T, count_burns: u32) -> u32;
}
