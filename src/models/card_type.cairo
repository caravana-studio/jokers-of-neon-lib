#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq)]
enum CardType {
    PreCalculateHand,
    PostCalculateHand,
    Hit,
    Miss,
    Hand,
    CurrentHand,
    PowerUp,
    RoundState,
    Win,
    Lose,
    Discard,
    Round,
    Game,
    Shop,
    LevelUpPlay,
    PlayRules,
    PokerHand,
    Debuff,
    Silence,
    None,
}

impl CardTypeIntoFelt252 of Into<CardType, felt252> {
    fn into(self: CardType) -> felt252 {
        match self {
            CardType::PreCalculateHand => 1,
            CardType::PostCalculateHand => 2,
            CardType::Hit => 3,
            CardType::CurrentHand => 4,
            CardType::PowerUp => 5,
            CardType::RoundState => 6,
            CardType::Win => 7,
            CardType::Lose => 8,
            CardType::Discard => 9,
            CardType::Round => 10,
            CardType::Game => 11,
            CardType::Shop => 12,
            CardType::LevelUpPlay => 13,
            CardType::PlayRules => 14,
            CardType::PokerHand => 15,
            CardType::Debuff => 16,
            CardType::Silence => 17,
            CardType::Miss => 18,
            CardType::Hand => 19,
            CardType::None => 9999,
        }
    }
}
