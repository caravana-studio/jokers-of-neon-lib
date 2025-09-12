use jokers_of_neon_lib::models::data::poker_hand::{LevelPokerHand, PokerHand};

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct EffectCard {
    pub id: u32,
    pub effect_id: u32,
    pub type_effect_card: TypeEffectCard,
}

#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq)]
pub enum TypeEffectCard {
    Modifier,
    Special,
}

impl SuitIntoFelt252 of Into<TypeEffectCard, felt252> {
    fn into(self: TypeEffectCard) -> felt252 {
        match self {
            TypeEffectCard::Modifier => 1,
            TypeEffectCard::Special => 2,
        }
    }
}
