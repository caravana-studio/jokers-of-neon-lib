#[derive(Serde, Copy, Drop, PartialEq)]
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
