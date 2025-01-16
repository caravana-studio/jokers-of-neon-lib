use jokers_of_neon_lib::configs::game::GameConfig;

#[starknet::interface]
trait IGameConfig<T> {
    fn get_game_config(self: @T) -> GameConfig;
}
