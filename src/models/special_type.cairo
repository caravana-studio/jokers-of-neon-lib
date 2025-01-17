#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq)]
enum SpecialType {
    PreCalculateHand,
    PostCalculateHand,
    Individual,
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
}

impl SpecialTypeIntoFelt252 of Into<SpecialType, felt252> {
    fn into(self: SpecialType) -> felt252 {
        match self {
            SpecialType::PreCalculateHand => 1,
            SpecialType::PostCalculateHand => 2,
            SpecialType::Individual => 3,
            SpecialType::CurrentHand => 4,
            SpecialType::PowerUp => 5,
            SpecialType::RoundState => 6,
            SpecialType::Win => 7,
            SpecialType::Lose => 8,
            SpecialType::Discard => 9,
            SpecialType::Round => 10,
            SpecialType::Game => 11,
            SpecialType::Shop => 12,
            SpecialType::LevelUpPlay => 13,
            SpecialType::PlayRules => 14,
            SpecialType::PokerHand => 15,
        }
    }
}
