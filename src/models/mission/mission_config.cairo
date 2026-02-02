use jokers_of_neon_lib::models::data::poker_hand::PokerHand;
use jokers_of_neon_lib::models::mission::mission_type::{MissionType, MissionDifficulty, MissionCycle};

#[derive(Copy, Drop, Serde, IntrospectPacked)]
#[dojo::model]
pub struct MissionConfig {
    #[key]
    pub config_id: u32,
    pub mission_type: MissionType,
    pub difficulty: MissionDifficulty,
    pub cycle: MissionCycle,
    pub threshold: u32,              // Valor configurable (X en "compra X")
    pub poker_hand: PokerHand,       // Para PlaySpecificHand
    pub requires_neon: bool,         // Variante neon
    pub base_xp: u32,                // Recompensa XP
}

pub fn create_mission_config(
    config_id: u32,
    mission_type: MissionType,
    difficulty: MissionDifficulty,
    cycle: MissionCycle,
    threshold: u32,
    poker_hand: PokerHand,
    requires_neon: bool,
    base_xp: u32,
) -> MissionConfig {
    MissionConfig {
        config_id,
        mission_type,
        difficulty,
        cycle,
        threshold,
        poker_hand,
        requires_neon,
        base_xp,
    }
}

pub fn create_score_mission(
    config_id: u32,
    difficulty: MissionDifficulty,
    cycle: MissionCycle,
    threshold: u32,
    base_xp: u32,
) -> MissionConfig {
    MissionConfig {
        config_id,
        mission_type: MissionType::ScoreThreshold,
        difficulty,
        cycle,
        threshold,
        poker_hand: PokerHand::None,
        requires_neon: false,
        base_xp,
    }
}

pub fn create_hand_mission(
    config_id: u32,
    difficulty: MissionDifficulty,
    cycle: MissionCycle,
    poker_hand: PokerHand,
    requires_neon: bool,
    base_xp: u32,
) -> MissionConfig {
    MissionConfig {
        config_id,
        mission_type: MissionType::PlaySpecificHand,
        difficulty,
        cycle,
        threshold: 1,
        poker_hand,
        requires_neon,
        base_xp,
    }
}

pub fn create_threshold_mission(
    config_id: u32,
    mission_type: MissionType,
    difficulty: MissionDifficulty,
    cycle: MissionCycle,
    threshold: u32,
    base_xp: u32,
) -> MissionConfig {
    MissionConfig {
        config_id,
        mission_type,
        difficulty,
        cycle,
        threshold,
        poker_hand: PokerHand::None,
        requires_neon: false,
        base_xp,
    }
}
