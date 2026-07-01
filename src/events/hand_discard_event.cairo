use starknet::ContractAddress;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub enum DiscardSource {
    Play,
    Discard,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct HandDiscardEvent {
    #[key]
    pub player: ContractAddress,
    pub game_id: u64,
    pub source: DiscardSource,
    pub discarded_hand_indexes: Span<u32>,
}
