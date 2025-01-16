use jokers_of_neon_lib::configs::play_rules::PlayRulesConfig;

#[starknet::interface]
trait IPlayRulesConfig<T> {
    fn get_play_rules_config(self: @T) -> PlayRulesConfig;
}
