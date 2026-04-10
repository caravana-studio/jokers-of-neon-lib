use jokers_of_neon_lib::models::status::game::game::CurrentSpecialCards;
use jokers_of_neon_lib::models::tracker::GameContext;

#[derive(Copy, Drop, Serde)]
pub struct PreRoundResult {
    pub apply: bool,
    pub copied_from_idx: u32,
    pub copied_effect_card_id: u32,
}

#[starknet::interface]
pub trait IPreRound<T> {
    fn on_pre_round(
        ref self: T,
        context: GameContext,
        source: CurrentSpecialCards,
        candidates: Span<CurrentSpecialCards>,
    ) -> PreRoundResult;
}
