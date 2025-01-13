use jokers::models::config::game_config::GameConfig;
use jokers::models::config::round_rewards_config::RoundConfig;
use jokers::models::config::shop_config::ShopConfig;

#[starknet::interface]
trait IConfigurator<T> {
    fn get_game_config(self: @T) -> GameConfig;
    fn get_shop_config(self: @T) -> ShopConfig;
    fn get_round_config(self: @T) -> RoundConfig;
}
