#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq)]
enum CardType {
    PreCalculateHand,
    PostCalculateHand,
    Hit,
    Miss,
    Hand,
    CurrentHand,
    PowerUp,
    Win,
    Lose,
    Discard,
    Round,
    Game,
    Shop,
    LevelUpPlay,
    Play,
    PlayRules,
    Debuff,
    Silence,
    Info,
    None,
}

impl CardTypeIntoFelt252 of Into<CardType, felt252> {
    fn into(self: CardType) -> felt252 {
        match self {
            CardType::PreCalculateHand => 0,
            CardType::PostCalculateHand => 1,
            CardType::Hit => 2,
            CardType::Miss => 3,
            CardType::Hand => 4,
            CardType::CurrentHand => 5,
            CardType::PowerUp => 6,
            CardType::Win => 7,
            CardType::Lose => 8,
            CardType::Discard => 9,
            CardType::Round => 10,
            CardType::Game => 11,
            CardType::Shop => 12,
            CardType::LevelUpPlay => 13,
            CardType::Play => 14,
            CardType::PlayRules => 15,
            CardType::Debuff => 16,
            CardType::Silence => 17,
            CardType::Info => 18,
            CardType::None => 9999,
        }
    }
}
