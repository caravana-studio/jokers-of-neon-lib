use jokers_of_neon_lib::models::data::poker_hand::PokerHand;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct CardItem {
    #[key]
    game_id: u32,
    #[key]
    idx: u32,
    #[key]
    item_type: CardItemType,
    card_id: u32,
    cost: u32,
    discount_cost: u32,
    purchased: bool,
}

#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq)]
enum CardItemType {
    None,
    Common,
    Modifier,
}

impl CardItemTypeIntou8 of Into<CardItemType, u8> {
    fn into(self: CardItemType) -> u8 {
        match self {
            CardItemType::None => 0,
            CardItemType::Common => 1,
            CardItemType::Modifier => 2,
        }
    }
}

impl CardItemTypeIntofelt252 of Into<CardItemType, felt252> {
    fn into(self: CardItemType) -> felt252 {
        match self {
            CardItemType::None => 0,
            CardItemType::Common => 1,
            CardItemType::Modifier => 2,
        }
    }
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct SpecialCardItem {
    #[key]
    game_id: u32,
    #[key]
    idx: u32,
    card_id: u32,
    cost: u32,
    discount_cost: u32,
    temporary_cost: u32,
    temporary_discount_cost: u32,
    purchased: bool,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct PokerHandItem {
    #[key]
    game_id: u32,
    #[key]
    idx: u32,
    poker_hand: PokerHand,
    level: u8,
    multi: u32,
    points: u32,
    cost: u32,
    discount_cost: u32,
    purchased: bool,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct BlisterPackItem {
    #[key]
    game_id: u32,
    #[key]
    idx: u32,
    blister_pack_id: u32,
    cost: u32,
    discount_cost: u32,
    purchased: bool,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct BlisterPackResult {
    #[key]
    game_id: u32,
    cards_picked: bool,
    cards: Span<u32>,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct SlotSpecialCardsItem {
    #[key]
    game_id: u32,
    cost: u32,
    discount_cost: u32,
    purchased: bool,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct BurnItem {
    #[key]
    game_id: u32,
    cost: u32,
    discount_cost: u32,
    purchased: bool,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct ReRollItem {
    #[key]
    game_id: u32,
    cost: u32,
    discount_cost: u32,
    purchased: bool,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct PowerUpItem {
    #[key]
    game_id: u32,
    #[key]
    idx: u32,
    power_up_id: u32,
    cost: u32,
    discount_cost: u32,
    purchased: bool,
}

#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq)]
enum DiscountSection {
    Traditionals,
    Modifiers,
    Specials,
    LootBoxes,
    PokerHands,
    Burns,
    SpecialSlots,
    PowerUps,
    None,
}

#[derive(Copy, Drop, Serde)]
struct ShopConfig {
    #[key]
    pub id: u32,
    pub traditional_cards_quantity: u32,
    pub modifiers_cards_quantity: u32,
    pub specials_cards_quantity: u32,
    pub loot_boxes_quantity: u32,
    pub power_ups_quantity: u32,
    pub poker_hands_quantity: u32,
    pub reroll_quantity: u32,
    pub burn_quantity: u32,
}
