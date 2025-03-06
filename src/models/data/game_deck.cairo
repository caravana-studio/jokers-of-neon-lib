#[derive(Copy, Drop, Introspect, Serde)]
#[dojo::model]
struct GameDeck {
    #[key]
    game_id: u32,
    len: u32,
    round_len: u32,
}

#[derive(Copy, Drop, Introspect, Serde)]
#[dojo::model]
struct DeckCard {
    #[key]
    game_id: u32,
    #[key]
    index: u32,
    card_id: u32,
}
