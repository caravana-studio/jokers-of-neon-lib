use starknet::ContractAddress;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub enum DiscardSource {
    Play,
    Discard,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct ForcedHandDiscardEvent {
    #[key]
    pub player: ContractAddress,
    pub game_id: u64,
    pub discarded_hand_indexes: Span<u32>,
}
