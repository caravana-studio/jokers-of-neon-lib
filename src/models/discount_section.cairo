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
    None
}
