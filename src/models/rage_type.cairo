#[derive(Serde, Copy, Drop, Introspect, PartialEq)]
enum RageType {
    // Debuff a specific card type (less or negative points, multi or cash)
    Debuff,
    // Silence a specific card type (doesnt count points and any special will affect this card)
    Silence,
    // Change round configs (i.e hands remainings)
    Round,
    // Change some game rules (i.e max hands, hand len play)
    Game,
}
