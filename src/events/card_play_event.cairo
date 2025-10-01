use starknet::ContractAddress;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub enum EventType {
    Cash,
    Club,
    Diamond,
    Point,
    Multi,
    Neon,
    Spade,
    Heart,
    Joker,
    Wild,
    AcumCash,
    AcumPoint,
    AcumMulti,
    None,
}

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct CardPlayEvent {
    #[key]
    pub player: ContractAddress,
    pub game_id: u64,
    pub mod_id: felt252,
    pub event_type: EventType,
    pub special: Span<(u32, i32)>,
    pub hand: Span<(u32, i32)>,
}

pub impl EventTypeDisplay of core::fmt::Display<EventType> {
    fn fmt(self: @EventType, ref f: core::fmt::Formatter) -> Result<(), core::fmt::Error> {
        let s = match self {
            EventType::Cash => "Cash",
            EventType::Club => "Club",
            EventType::Diamond => "Diamond",
            EventType::Point => "Point",
            EventType::Multi => "Multi",
            EventType::Neon => "Neon",
            EventType::Spade => "Spade",
            EventType::Heart => "Heart",
            EventType::Joker => "Joker",
            EventType::Wild => "Wild",
            EventType::AcumCash => "AcumCash",
            EventType::AcumPoint => "AcumPoint",
            EventType::AcumMulti => "AcumMulti",
            EventType::None => "None",
        };
        f.buffer.append(@s);
        Result::Ok(())
    }
}
