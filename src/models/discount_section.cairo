#[derive(Serde, Copy, Drop, Introspect, PartialEq)]
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
