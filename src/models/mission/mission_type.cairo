#[derive(Serde, Copy, Drop, PartialEq, IntrospectPacked, DojoStore, Default)]
pub enum MissionType {
    #[default]
    None,
    // Score/Cash
    ScoreThreshold,
    CashThreshold,
    // Compras
    BuySpecials,
    BurnCards,
    SellSpecials,
    // Manos
    PlaySpecificHand,
    PlayNeonHand,
    PlayMultipleHighCard,
    // Jokers
    PlayJokers,
    PlayNeonJokers,
    JokersInDeck,
    NeonJokersInDeck,
    // Deck
    NeonCardsInDeck,
    DeckSize,
    // Rondas
    WinRageRounds,
    WinWithoutDiscards,
    WinOnLastHand,
    WinOnFirstHand,
    // Slots/Level
    SpecialSlots,
    LevelUpPokerHand,
    // Power-ups
    UseBothPowerUpTypes,
    // Loot box
    FindJokerInLootBox,
}

#[derive(Serde, Copy, Drop, PartialEq, IntrospectPacked, DojoStore, Default)]
pub enum MissionDifficulty {
    #[default]
    None,
    Easy,
    Medium,
    Hard,
}

#[derive(Serde, Copy, Drop, PartialEq, IntrospectPacked, DojoStore, Default)]
pub enum MissionCycle {
    #[default]
    None,
    Daily,
    Weekly,
}

impl MissionTypeIntoU8 of Into<MissionType, u8> {
    fn into(self: MissionType) -> u8 {
        match self {
            MissionType::None => 0,
            MissionType::ScoreThreshold => 1,
            MissionType::CashThreshold => 2,
            MissionType::BuySpecials => 3,
            MissionType::BurnCards => 4,
            MissionType::SellSpecials => 5,
            MissionType::PlaySpecificHand => 6,
            MissionType::PlayNeonHand => 7,
            MissionType::PlayMultipleHighCard => 8,
            MissionType::PlayJokers => 9,
            MissionType::PlayNeonJokers => 10,
            MissionType::JokersInDeck => 11,
            MissionType::NeonJokersInDeck => 12,
            MissionType::NeonCardsInDeck => 13,
            MissionType::DeckSize => 14,
            MissionType::WinRageRounds => 15,
            MissionType::WinWithoutDiscards => 16,
            MissionType::WinOnLastHand => 17,
            MissionType::WinOnFirstHand => 18,
            MissionType::SpecialSlots => 19,
            MissionType::LevelUpPokerHand => 20,
            MissionType::UseBothPowerUpTypes => 21,
            MissionType::FindJokerInLootBox => 22,
        }
    }
}

impl MissionDifficultyIntoU8 of Into<MissionDifficulty, u8> {
    fn into(self: MissionDifficulty) -> u8 {
        match self {
            MissionDifficulty::None => 0,
            MissionDifficulty::Easy => 1,
            MissionDifficulty::Medium => 2,
            MissionDifficulty::Hard => 3,
        }
    }
}

impl MissionCycleIntoU8 of Into<MissionCycle, u8> {
    fn into(self: MissionCycle) -> u8 {
        match self {
            MissionCycle::None => 0,
            MissionCycle::Daily => 1,
            MissionCycle::Weekly => 2,
        }
    }
}

impl U8TryIntoMissionDifficulty of TryInto<u8, MissionDifficulty> {
    fn try_into(self: u8) -> Option<MissionDifficulty> {
        if self == 0 {
            Option::Some(MissionDifficulty::None)
        } else if self == 1 {
            Option::Some(MissionDifficulty::Easy)
        } else if self == 2 {
            Option::Some(MissionDifficulty::Medium)
        } else if self == 3 {
            Option::Some(MissionDifficulty::Hard)
        } else {
            Option::None
        }
    }
}

impl U8TryIntoMissionCycle of TryInto<u8, MissionCycle> {
    fn try_into(self: u8) -> Option<MissionCycle> {
        if self == 0 {
            Option::Some(MissionCycle::None)
        } else if self == 1 {
            Option::Some(MissionCycle::Daily)
        } else if self == 2 {
            Option::Some(MissionCycle::Weekly)
        } else {
            Option::None
        }
    }
}
