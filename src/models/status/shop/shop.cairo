use jokers_of_neon_lib::models::data::poker_hand::PokerHand;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct CardItem {
    #[key]
    pub game_id: u64,
    #[key]
    pub idx: u32,
    #[key]
    pub item_type: CardItemType,
    pub card_id: u32,
    pub cost: u32,
    pub discount_cost: u32,
    pub purchased: bool,
}

#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq, DojoStore, Default)]
pub enum CardItemType {
    #[default]
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
pub struct SpecialCardItem {
    #[key]
    pub game_id: u64,
    #[key]
    pub idx: u32,
    pub card_id: u32,
    pub cost: u32,
    pub discount_cost: u32,
    pub temporary_cost: u32,
    pub temporary_discount_cost: u32,
    pub purchased: bool,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct PokerHandItem {
    #[key]
    pub game_id: u64,
    #[key]
    pub idx: u32,
    pub poker_hand: PokerHand,
    pub level: u8,
    pub multi: u32,
    pub points: u32,
    pub cost: u32,
    pub discount_cost: u32,
    pub purchased: bool,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct BlisterPackItem {
    #[key]
    pub game_id: u64,
    #[key]
    pub idx: u32,
    pub blister_pack_id: u32,
    pub cost: u32,
    pub discount_cost: u32,
    pub purchased: bool,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct BlisterPackResult {
    #[key]
    pub game_id: u64,
    pub cards_picked: bool,
    pub cards: Span<u32>,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct SlotSpecialCardsItem {
    #[key]
    pub game_id: u64,
    pub cost: u32,
    pub discount_cost: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct BurnItem {
    #[key]
    pub game_id: u64,
    pub cost: u32,
    pub discount_cost: u32,
    pub purchased: bool,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct PowerUpItem {
    #[key]
    pub game_id: u64,
    #[key]
    pub idx: u32,
    pub power_up_id: u32,
    pub cost: u32,
    pub discount_cost: u32,
    pub purchased: bool,
}

#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq, Default)]
pub enum DiscountSection {
    Traditionals,
    Modifiers,
    Specials,
    LootBoxes,
    PokerHands,
    Burns,
    SpecialSlots,
    PowerUps,
    #[default]
    None,
}

#[derive(Copy, Drop, Serde)]
pub struct ShopConfig {
    #[key]
    pub id: u32,
    pub traditional_cards_quantity: u32,
    pub modifiers_cards_quantity: u32,
    pub specials_cards_quantity: u32,
    pub loot_boxes_quantity: u32,
    pub power_ups_quantity: u32,
    pub poker_hands_quantity: u32,
    pub burn_quantity: u32,
}
