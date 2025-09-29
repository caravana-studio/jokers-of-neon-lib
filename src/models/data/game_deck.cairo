#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct GameDeck {
    #[key]
    pub game_id: u64,
    pub len: u32,
    pub round_len: u32,
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct DeckCard {
    #[key]
    pub game_id: u64,
    #[key]
    pub index: u32,
    pub card_id: u32,
}
