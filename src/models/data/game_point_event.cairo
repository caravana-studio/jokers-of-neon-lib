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
    pub special: Span<(EventType, u32, i32)>, // Type, index, points
    pub hand: Span<(EventType, u32, i32)>, // Type, index, points
}
