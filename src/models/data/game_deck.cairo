#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct GameDeck {
    #[key]
    game_id: u64,
    len: u32,
    round_len: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
struct DeckCard {
    #[key]
    game_id: u64,
    #[key]
    index: u32,
    card_id: u32,
}
