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
            CardType::PreCalculateHand => 1,
            CardType::PostCalculateHand => 2,
            CardType::Hit => 3,
            CardType::Miss => 4,
            CardType::Hand => 5,
            CardType::CurrentHand => 6,
            CardType::PowerUp => 7,
            CardType::Win => 8,
            CardType::Lose => 9,
            CardType::Discard => 10,
            CardType::Round => 11,
            CardType::Game => 12,
            CardType::Shop => 13,
            CardType::LevelUpPlay => 14,
            CardType::Play => 15,
            CardType::PlayRules => 16,
            CardType::Debuff => 17,
            CardType::Silence => 18,
            CardType::Info => 19,
            CardType::None => 9999,
        }
    }
}
