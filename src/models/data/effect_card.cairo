use jokers_of_neon_lib::models::data::poker_hand::{LevelPokerHand, PokerHand};

#[derive(Copy, Drop, Introspect, Serde)]
struct EffectCard {
    id: u32,
    effect_id: u32,
    type_effect_card: TypeEffectCard,
}

#[derive(Serde, Copy, Drop, Introspect, PartialEq)]
enum TypeEffectCard {
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
