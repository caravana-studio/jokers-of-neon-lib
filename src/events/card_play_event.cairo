use starknet::ContractAddress;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
enum EventType {
    Cash,
    Club,
    Diamond,
    Point,
    Multi,
    Neon,
    Spade,
    Heart
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct CardPlayEvent {
    #[key]
    pub player: ContractAddress,
    pub game_id: u32,
    pub mod_id: u32,
    pub event_type: EventType,
    pub special: Span<(u32, i32)>, // index, quantity
    pub hand: Span<(u32, i32)>, // index, quantity
}
