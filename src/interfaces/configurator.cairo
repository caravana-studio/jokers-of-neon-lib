use jokers_of_neon_lib::models::config::game_config::GameConfig;
use jokers_of_neon_lib::models::config::round_rewards_config::RoundConfig;
use jokers_of_neon_lib::models::config::shop_config::ShopConfig;

#[starknet::interface]
trait IConfigurator<T> {
    fn get_game_config(self: @T) -> GameConfig;
    fn get_shop_config(self: @T) -> ShopConfig;
    fn get_round_config(self: @T) -> RoundConfig;
    fn specials_shop_info(self: @T) -> (Span<Span<u32>>, Span<u32>, Span<u32>);
}
