#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq, Default)]
pub enum CardType {
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
    DiscardCondition,
    Round,
    Game,
    Shop,
    LevelUpPlay,
    Play,
    PlayRules,
    Debuff,
    Silence,
    Info,
    Burn,
    #[default]
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
            CardType::DiscardCondition => 11,
            CardType::Round => 12,
            CardType::Game => 13,
            CardType::Shop => 14,
            CardType::LevelUpPlay => 15,
            CardType::Play => 16,
            CardType::PlayRules => 17,
            CardType::Debuff => 18,
            CardType::Silence => 19,
            CardType::Info => 20,
            CardType::Burn => 21,
            CardType::None => 9999,
        }
    }
}
