use jokers_of_neon_lib::models::data::effect_card::{EffectCard, TypeEffectCard};

const SUIT_CLUB_MODIFIER_ID: u32 = 608;
const SUIT_DIAMONDS_MODIFIER_ID: u32 = 609;
const SUIT_HEARTS_MODIFIER_ID: u32 = 610;
const SUIT_SPADES_MODIFIER_ID: u32 = 611;
const NEON_MODIFIER_ID: u32 = 612;
const WILD_CARD_MODIFIER_ID: u32 = 613;

fn SUIT_CLUB_MODIFIER() -> EffectCard {
    EffectCard { id: SUIT_CLUB_MODIFIER_ID, type_effect_card: TypeEffectCard::Modifier, effect_id: 0, }
}

fn SUIT_DIAMONDS_MODIFIER() -> EffectCard {
    EffectCard { id: SUIT_DIAMONDS_MODIFIER_ID, type_effect_card: TypeEffectCard::Modifier, effect_id: 0, }
}

fn SUIT_HEARTS_MODIFIER() -> EffectCard {
    EffectCard { id: SUIT_HEARTS_MODIFIER_ID, type_effect_card: TypeEffectCard::Modifier, effect_id: 0, }
}

fn SUIT_SPADES_MODIFIER() -> EffectCard {
    EffectCard { id: SUIT_SPADES_MODIFIER_ID, type_effect_card: TypeEffectCard::Modifier, effect_id: 0, }
}

fn NEON_MODIFIER() -> EffectCard {
    EffectCard { id: NEON_MODIFIER_ID, type_effect_card: TypeEffectCard::Modifier, effect_id: Zeroable::zero(), }
}

fn WILD_CARD_MODIFIER() -> EffectCard {
    EffectCard { id: WILD_CARD_MODIFIER_ID, type_effect_card: TypeEffectCard::Modifier, effect_id: Zeroable::zero(), }
}

fn INVALID_EFFECT_CARD() -> EffectCard {
    EffectCard { id: Zeroable::zero(), type_effect_card: TypeEffectCard::Modifier, effect_id: Zeroable::zero() }
}

fn modifiers_ids_all() -> Array<u32> {
    array![
        SUIT_CLUB_MODIFIER_ID,
        SUIT_DIAMONDS_MODIFIER_ID,
        SUIT_HEARTS_MODIFIER_ID,
        SUIT_SPADES_MODIFIER_ID,
        NEON_MODIFIER_ID,
        WILD_CARD_MODIFIER_ID
    ]
}

// Return -> (Modifier Group, Probability Group, Group Cost)
fn modifiers_shop_info() -> (Span<Span<u32>>, Span<u32>, Span<u32>) {
    // B-Grade Group
    let B_MODIFIERS_PROBABILITY = 60;
    let B_MODIFIERS_COST = 300;
    let B_MODIFIERS = array![
        SUIT_CLUB_MODIFIER_ID, SUIT_DIAMONDS_MODIFIER_ID, SUIT_HEARTS_MODIFIER_ID, SUIT_SPADES_MODIFIER_ID
    ]
        .span();

    // A-Grade Group
    let A_MODIFIERS_PROBABILITY = 20;
    let A_MODIFIERS_COST = 750;
    let A_MODIFIERS = array![WILD_CARD_MODIFIER_ID].span();

    // S-Grade Group
    let S_MODIFIERS_PROBABILITY = 20;
    let S_MODIFIERS_COST = 1000;
    let S_MODIFIERS = array![NEON_MODIFIER_ID].span();

    assert(B_MODIFIERS_PROBABILITY + A_MODIFIERS_PROBABILITY + S_MODIFIERS_PROBABILITY == 100, 'wrong probability sum');
    (
        array![B_MODIFIERS, A_MODIFIERS, S_MODIFIERS].span(),
        array![B_MODIFIERS_PROBABILITY, A_MODIFIERS_PROBABILITY, S_MODIFIERS_PROBABILITY].span(),
        array![B_MODIFIERS_COST, A_MODIFIERS_COST, S_MODIFIERS_COST].span()
    )
}
