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
    LevelUpDiscard,
    ShopDiscount,
    HandSetup,
    EndRound,
    PostAction,
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
            CardType::LevelUpDiscard => 22,
            CardType::ShopDiscount => 23,
            CardType::HandSetup => 24,
            CardType::EndRound => 25,
            CardType::PostAction => 26,
            CardType::None => 9999,
        }
    }
}


pub impl CardTypeDisplay of core::fmt::Display<CardType> {
    fn fmt(self: @CardType, ref f: core::fmt::Formatter) -> Result<(), core::fmt::Error> {
        let s = match self {
            CardType::PreCalculateHand => "PreCalculateHand",
            CardType::PostCalculateHand => "PostCalculateHand",
            CardType::Hit => "Hit",
            CardType::Miss => "Miss",
            CardType::Hand => "Hand",
            CardType::CurrentHand => "CurrentHand",
            CardType::PowerUp => "PowerUp",
            CardType::Win => "Win",
            CardType::Lose => "Lose",
            CardType::Discard => "Discard",
            CardType::DiscardCondition => "DiscardCondition",
            CardType::Round => "Round",
            CardType::Game => "Game",
            CardType::Shop => "Shop",
            CardType::LevelUpPlay => "LevelUpPlay",
            CardType::Play => "Play",
            CardType::PlayRules => "PlayRules",
            CardType::Debuff => "Debuff",
            CardType::Silence => "Silence",
            CardType::Info => "Info",
            CardType::Burn => "Burn",
            CardType::LevelUpDiscard => "LevelUpDiscard",
            CardType::ShopDiscount => "ShopDiscount",
            CardType::HandSetup => "HandSetup",
            CardType::EndRound => "EndRound",
            CardType::PostAction => "PostAction",
            CardType::None => "None",
        };
        f.buffer.append(@s);
        Result::Ok(())
    }
}
