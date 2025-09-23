use jokers_of_neon_lib::models::data::card::{Card, Suit, Value};

// Traditional cards
pub const TWO_CLUBS_ID: u32 = 0;
pub const THREE_CLUBS_ID: u32 = 1;
pub const FOUR_CLUBS_ID: u32 = 2;
pub const FIVE_CLUBS_ID: u32 = 3;
pub const SIX_CLUBS_ID: u32 = 4;
pub const SEVEN_CLUBS_ID: u32 = 5;
pub const EIGHT_CLUBS_ID: u32 = 6;
pub const NINE_CLUBS_ID: u32 = 7;
pub const TEN_CLUBS_ID: u32 = 8;
pub const JACK_CLUBS_ID: u32 = 9;
pub const QUEEN_CLUBS_ID: u32 = 10;
pub const KING_CLUBS_ID: u32 = 11;
pub const ACE_CLUBS_ID: u32 = 12;
pub const TWO_DIAMONDS_ID: u32 = 13;
pub const THREE_DIAMONDS_ID: u32 = 14;
pub const FOUR_DIAMONDS_ID: u32 = 15;
pub const FIVE_DIAMONDS_ID: u32 = 16;
pub const SIX_DIAMONDS_ID: u32 = 17;
pub const SEVEN_DIAMONDS_ID: u32 = 18;
pub const EIGHT_DIAMONDS_ID: u32 = 19;
pub const NINE_DIAMONDS_ID: u32 = 20;
pub const TEN_DIAMONDS_ID: u32 = 21;
pub const JACK_DIAMONDS_ID: u32 = 22;
pub const QUEEN_DIAMONDS_ID: u32 = 23;
pub const KING_DIAMONDS_ID: u32 = 24;
pub const ACE_DIAMONDS_ID: u32 = 25;
pub const TWO_HEARTS_ID: u32 = 26;
pub const THREE_HEARTS_ID: u32 = 27;
pub const FOUR_HEARTS_ID: u32 = 28;
pub const FIVE_HEARTS_ID: u32 = 29;
pub const SIX_HEARTS_ID: u32 = 30;
pub const SEVEN_HEARTS_ID: u32 = 31;
pub const EIGHT_HEARTS_ID: u32 = 32;
pub const NINE_HEARTS_ID: u32 = 33;
pub const TEN_HEARTS_ID: u32 = 34;
pub const JACK_HEARTS_ID: u32 = 35;
pub const QUEEN_HEARTS_ID: u32 = 36;
pub const KING_HEARTS_ID: u32 = 37;
pub const ACE_HEARTS_ID: u32 = 38;
pub const TWO_SPADES_ID: u32 = 39;
pub const THREE_SPADES_ID: u32 = 40;
pub const FOUR_SPADES_ID: u32 = 41;
pub const FIVE_SPADES_ID: u32 = 42;
pub const SIX_SPADES_ID: u32 = 43;
pub const SEVEN_SPADES_ID: u32 = 44;
pub const EIGHT_SPADES_ID: u32 = 45;
pub const NINE_SPADES_ID: u32 = 46;
pub const TEN_SPADES_ID: u32 = 47;
pub const JACK_SPADES_ID: u32 = 48;
pub const QUEEN_SPADES_ID: u32 = 49;
pub const KING_SPADES_ID: u32 = 50;
pub const ACE_SPADES_ID: u32 = 51;

pub const NEON_TWO_CLUBS_ID: u32 = 200;
pub const NEON_THREE_CLUBS_ID: u32 = 201;
pub const NEON_FOUR_CLUBS_ID: u32 = 202;
pub const NEON_FIVE_CLUBS_ID: u32 = 203;
pub const NEON_SIX_CLUBS_ID: u32 = 204;
pub const NEON_SEVEN_CLUBS_ID: u32 = 205;
pub const NEON_EIGHT_CLUBS_ID: u32 = 206;
pub const NEON_NINE_CLUBS_ID: u32 = 207;
pub const NEON_TEN_CLUBS_ID: u32 = 208;
pub const NEON_JACK_CLUBS_ID: u32 = 209;
pub const NEON_QUEEN_CLUBS_ID: u32 = 210;
pub const NEON_KING_CLUBS_ID: u32 = 211;
pub const NEON_ACE_CLUBS_ID: u32 = 212;
pub const NEON_TWO_DIAMONDS_ID: u32 = 213;
pub const NEON_THREE_DIAMONDS_ID: u32 = 214;
pub const NEON_FOUR_DIAMONDS_ID: u32 = 215;
pub const NEON_FIVE_DIAMONDS_ID: u32 = 216;
pub const NEON_SIX_DIAMONDS_ID: u32 = 217;
pub const NEON_SEVEN_DIAMONDS_ID: u32 = 218;
pub const NEON_EIGHT_DIAMONDS_ID: u32 = 219;
pub const NEON_NINE_DIAMONDS_ID: u32 = 220;
pub const NEON_TEN_DIAMONDS_ID: u32 = 221;
pub const NEON_JACK_DIAMONDS_ID: u32 = 222;
pub const NEON_QUEEN_DIAMONDS_ID: u32 = 223;
pub const NEON_KING_DIAMONDS_ID: u32 = 224;
pub const NEON_ACE_DIAMONDS_ID: u32 = 225;
pub const NEON_TWO_HEARTS_ID: u32 = 226;
pub const NEON_THREE_HEARTS_ID: u32 = 227;
pub const NEON_FOUR_HEARTS_ID: u32 = 228;
pub const NEON_FIVE_HEARTS_ID: u32 = 229;
pub const NEON_SIX_HEARTS_ID: u32 = 230;
pub const NEON_SEVEN_HEARTS_ID: u32 = 231;
pub const NEON_EIGHT_HEARTS_ID: u32 = 232;
pub const NEON_NINE_HEARTS_ID: u32 = 233;
pub const NEON_TEN_HEARTS_ID: u32 = 234;
pub const NEON_JACK_HEARTS_ID: u32 = 235;
pub const NEON_QUEEN_HEARTS_ID: u32 = 236;
pub const NEON_KING_HEARTS_ID: u32 = 237;
pub const NEON_ACE_HEARTS_ID: u32 = 238;
pub const NEON_TWO_SPADES_ID: u32 = 239;
pub const NEON_THREE_SPADES_ID: u32 = 240;
pub const NEON_FOUR_SPADES_ID: u32 = 241;
pub const NEON_FIVE_SPADES_ID: u32 = 242;
pub const NEON_SIX_SPADES_ID: u32 = 243;
pub const NEON_SEVEN_SPADES_ID: u32 = 244;
pub const NEON_EIGHT_SPADES_ID: u32 = 245;
pub const NEON_NINE_SPADES_ID: u32 = 246;
pub const NEON_TEN_SPADES_ID: u32 = 247;
pub const NEON_JACK_SPADES_ID: u32 = 248;
pub const NEON_QUEEN_SPADES_ID: u32 = 249;
pub const NEON_KING_SPADES_ID: u32 = 250;
pub const NEON_ACE_SPADES_ID: u32 = 251;

pub const JOKER_CARD_ID: u32 = 52;
pub const NEON_JOKER_CARD_ID: u32 = 252;
pub const WILD_CARD_ID: u32 = 53;
pub const NEON_WILD_CARD_ID: u32 = 253;
pub const INVALID_CARD_ID: u32 = 9999;

// TRADITIONALS
pub fn TWO_CLUBS() -> Card {
    Card { id: TWO_CLUBS_ID, suit: Suit::Clubs, value: Value::Two, points: 2, multi: 0 }
}
pub fn THREE_CLUBS() -> Card {
    Card { id: THREE_CLUBS_ID, suit: Suit::Clubs, value: Value::Three, points: 3, multi: 0 }
}
pub fn FOUR_CLUBS() -> Card {
    Card { id: FOUR_CLUBS_ID, suit: Suit::Clubs, value: Value::Four, points: 4, multi: 0 }
}
pub fn FIVE_CLUBS() -> Card {
    Card { id: FIVE_CLUBS_ID, suit: Suit::Clubs, value: Value::Five, points: 5, multi: 0 }
}
pub fn SIX_CLUBS() -> Card {
    Card { id: SIX_CLUBS_ID, suit: Suit::Clubs, value: Value::Six, points: 6, multi: 0 }
}
pub fn SEVEN_CLUBS() -> Card {
    Card { id: SEVEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Seven, points: 7, multi: 0 }
}
pub fn EIGHT_CLUBS() -> Card {
    Card { id: EIGHT_CLUBS_ID, suit: Suit::Clubs, value: Value::Eight, points: 8, multi: 0 }
}
pub fn NINE_CLUBS() -> Card {
    Card { id: NINE_CLUBS_ID, suit: Suit::Clubs, value: Value::Nine, points: 9, multi: 0 }
}
pub fn TEN_CLUBS() -> Card {
    Card { id: TEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Ten, points: 10, multi: 0 }
}
pub fn JACK_CLUBS() -> Card {
    Card { id: JACK_CLUBS_ID, suit: Suit::Clubs, value: Value::Jack, points: 10, multi: 0 }
}
pub fn QUEEN_CLUBS() -> Card {
    Card { id: QUEEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Queen, points: 10, multi: 0 }
}
pub fn KING_CLUBS() -> Card {
    Card { id: KING_CLUBS_ID, suit: Suit::Clubs, value: Value::King, points: 10, multi: 0 }
}
pub fn ACE_CLUBS() -> Card {
    Card { id: ACE_CLUBS_ID, suit: Suit::Clubs, value: Value::Ace, points: 11, multi: 0 }
}

pub fn TWO_DIAMONDS() -> Card {
    Card { id: TWO_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Two, points: 2, multi: 0 }
}
pub fn THREE_DIAMONDS() -> Card {
    Card { id: THREE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Three, points: 3, multi: 0 }
}
pub fn FOUR_DIAMONDS() -> Card {
    Card { id: FOUR_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Four, points: 4, multi: 0 }
}
pub fn FIVE_DIAMONDS() -> Card {
    Card { id: FIVE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Five, points: 5, multi: 0 }
}
pub fn SIX_DIAMONDS() -> Card {
    Card { id: SIX_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Six, points: 6, multi: 0 }
}
pub fn SEVEN_DIAMONDS() -> Card {
    Card { id: SEVEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Seven, points: 7, multi: 0 }
}
pub fn EIGHT_DIAMONDS() -> Card {
    Card { id: EIGHT_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Eight, points: 8, multi: 0 }
}
pub fn NINE_DIAMONDS() -> Card {
    Card { id: NINE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Nine, points: 9, multi: 0 }
}
pub fn TEN_DIAMONDS() -> Card {
    Card { id: TEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Ten, points: 10, multi: 0 }
}
pub fn JACK_DIAMONDS() -> Card {
    Card { id: JACK_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Jack, points: 10, multi: 0 }
}
pub fn QUEEN_DIAMONDS() -> Card {
    Card { id: QUEEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Queen, points: 10, multi: 0 }
}
pub fn KING_DIAMONDS() -> Card {
    Card { id: KING_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::King, points: 10, multi: 0 }
}
pub fn ACE_DIAMONDS() -> Card {
    Card { id: ACE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Ace, points: 11, multi: 0 }
}

pub fn TWO_HEARTS() -> Card {
    Card { id: TWO_HEARTS_ID, suit: Suit::Hearts, value: Value::Two, points: 2, multi: 0 }
}
pub fn THREE_HEARTS() -> Card {
    Card { id: THREE_HEARTS_ID, suit: Suit::Hearts, value: Value::Three, points: 3, multi: 0 }
}
pub fn FOUR_HEARTS() -> Card {
    Card { id: FOUR_HEARTS_ID, suit: Suit::Hearts, value: Value::Four, points: 4, multi: 0 }
}
pub fn FIVE_HEARTS() -> Card {
    Card { id: FIVE_HEARTS_ID, suit: Suit::Hearts, value: Value::Five, points: 5, multi: 0 }
}
pub fn SIX_HEARTS() -> Card {
    Card { id: SIX_HEARTS_ID, suit: Suit::Hearts, value: Value::Six, points: 6, multi: 0 }
}
pub fn SEVEN_HEARTS() -> Card {
    Card { id: SEVEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Seven, points: 7, multi: 0 }
}
pub fn EIGHT_HEARTS() -> Card {
    Card { id: EIGHT_HEARTS_ID, suit: Suit::Hearts, value: Value::Eight, points: 8, multi: 0 }
}
pub fn NINE_HEARTS() -> Card {
    Card { id: NINE_HEARTS_ID, suit: Suit::Hearts, value: Value::Nine, points: 9, multi: 0 }
}
pub fn TEN_HEARTS() -> Card {
    Card { id: TEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Ten, points: 10, multi: 0 }
}
pub fn JACK_HEARTS() -> Card {
    Card { id: JACK_HEARTS_ID, suit: Suit::Hearts, value: Value::Jack, points: 10, multi: 0 }
}
pub fn QUEEN_HEARTS() -> Card {
    Card { id: QUEEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Queen, points: 10, multi: 0 }
}
pub fn KING_HEARTS() -> Card {
    Card { id: KING_HEARTS_ID, suit: Suit::Hearts, value: Value::King, points: 10, multi: 0 }
}
pub fn ACE_HEARTS() -> Card {
    Card { id: ACE_HEARTS_ID, suit: Suit::Hearts, value: Value::Ace, points: 11, multi: 0 }
}

pub fn TWO_SPADES() -> Card {
    Card { id: TWO_SPADES_ID, suit: Suit::Spades, value: Value::Two, points: 2, multi: 0 }
}
pub fn THREE_SPADES() -> Card {
    Card { id: THREE_SPADES_ID, suit: Suit::Spades, value: Value::Three, points: 3, multi: 0 }
}
pub fn FOUR_SPADES() -> Card {
    Card { id: FOUR_SPADES_ID, suit: Suit::Spades, value: Value::Four, points: 4, multi: 0 }
}
pub fn FIVE_SPADES() -> Card {
    Card { id: FIVE_SPADES_ID, suit: Suit::Spades, value: Value::Five, points: 5, multi: 0 }
}
pub fn SIX_SPADES() -> Card {
    Card { id: SIX_SPADES_ID, suit: Suit::Spades, value: Value::Six, points: 6, multi: 0 }
}
pub fn SEVEN_SPADES() -> Card {
    Card { id: SEVEN_SPADES_ID, suit: Suit::Spades, value: Value::Seven, points: 7, multi: 0 }
}
pub fn EIGHT_SPADES() -> Card {
    Card { id: EIGHT_SPADES_ID, suit: Suit::Spades, value: Value::Eight, points: 8, multi: 0 }
}
pub fn NINE_SPADES() -> Card {
    Card { id: NINE_SPADES_ID, suit: Suit::Spades, value: Value::Nine, points: 9, multi: 0 }
}
pub fn TEN_SPADES() -> Card {
    Card { id: TEN_SPADES_ID, suit: Suit::Spades, value: Value::Ten, points: 10, multi: 0 }
}
pub fn JACK_SPADES() -> Card {
    Card { id: JACK_SPADES_ID, suit: Suit::Spades, value: Value::Jack, points: 10, multi: 0 }
}
pub fn QUEEN_SPADES() -> Card {
    Card { id: QUEEN_SPADES_ID, suit: Suit::Spades, value: Value::Queen, points: 10, multi: 0 }
}
pub fn KING_SPADES() -> Card {
    Card { id: KING_SPADES_ID, suit: Suit::Spades, value: Value::King, points: 10, multi: 0 }
}
pub fn ACE_SPADES() -> Card {
    Card { id: ACE_SPADES_ID, suit: Suit::Spades, value: Value::Ace, points: 11, multi: 0 }
}

// NEON
pub fn NEON_TWO_HEARTS() -> Card {
    Card { id: NEON_TWO_HEARTS_ID, suit: Suit::Hearts, value: Value::Two, points: 4, multi: 1 }
}
pub fn NEON_THREE_HEARTS() -> Card {
    Card { id: NEON_THREE_HEARTS_ID, suit: Suit::Hearts, value: Value::Three, points: 6, multi: 1 }
}
pub fn NEON_FOUR_HEARTS() -> Card {
    Card { id: NEON_FOUR_HEARTS_ID, suit: Suit::Hearts, value: Value::Four, points: 8, multi: 1 }
}
pub fn NEON_FIVE_HEARTS() -> Card {
    Card { id: NEON_FIVE_HEARTS_ID, suit: Suit::Hearts, value: Value::Five, points: 10, multi: 1 }
}
pub fn NEON_SIX_HEARTS() -> Card {
    Card { id: NEON_SIX_HEARTS_ID, suit: Suit::Hearts, value: Value::Six, points: 12, multi: 1 }
}
pub fn NEON_SEVEN_HEARTS() -> Card {
    Card { id: NEON_SEVEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Seven, points: 14, multi: 1 }
}
pub fn NEON_EIGHT_HEARTS() -> Card {
    Card { id: NEON_EIGHT_HEARTS_ID, suit: Suit::Hearts, value: Value::Eight, points: 16, multi: 1 }
}
pub fn NEON_NINE_HEARTS() -> Card {
    Card { id: NEON_NINE_HEARTS_ID, suit: Suit::Hearts, value: Value::Nine, points: 18, multi: 1 }
}
pub fn NEON_TEN_HEARTS() -> Card {
    Card { id: NEON_TEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Ten, points: 20, multi: 1 }
}
pub fn NEON_JACK_HEARTS() -> Card {
    Card { id: NEON_JACK_HEARTS_ID, suit: Suit::Hearts, value: Value::Jack, points: 20, multi: 1 }
}
pub fn NEON_QUEEN_HEARTS() -> Card {
    Card { id: NEON_QUEEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Queen, points: 20, multi: 1 }
}
pub fn NEON_KING_HEARTS() -> Card {
    Card { id: NEON_KING_HEARTS_ID, suit: Suit::Hearts, value: Value::King, points: 20, multi: 1 }
}
pub fn NEON_ACE_HEARTS() -> Card {
    Card { id: NEON_ACE_HEARTS_ID, suit: Suit::Hearts, value: Value::Ace, points: 22, multi: 1 }
}

pub fn NEON_TWO_SPADES() -> Card {
    Card { id: NEON_TWO_SPADES_ID, suit: Suit::Spades, value: Value::Two, points: 4, multi: 1 }
}
pub fn NEON_THREE_SPADES() -> Card {
    Card { id: NEON_THREE_SPADES_ID, suit: Suit::Spades, value: Value::Three, points: 6, multi: 1 }
}
pub fn NEON_FOUR_SPADES() -> Card {
    Card { id: NEON_FOUR_SPADES_ID, suit: Suit::Spades, value: Value::Four, points: 8, multi: 1 }
}
pub fn NEON_FIVE_SPADES() -> Card {
    Card { id: NEON_FIVE_SPADES_ID, suit: Suit::Spades, value: Value::Five, points: 10, multi: 1 }
}
pub fn NEON_SIX_SPADES() -> Card {
    Card { id: NEON_SIX_SPADES_ID, suit: Suit::Spades, value: Value::Six, points: 12, multi: 1 }
}
pub fn NEON_SEVEN_SPADES() -> Card {
    Card { id: NEON_SEVEN_SPADES_ID, suit: Suit::Spades, value: Value::Seven, points: 14, multi: 1 }
}
pub fn NEON_EIGHT_SPADES() -> Card {
    Card { id: NEON_EIGHT_SPADES_ID, suit: Suit::Spades, value: Value::Eight, points: 16, multi: 1 }
}
pub fn NEON_NINE_SPADES() -> Card {
    Card { id: NEON_NINE_SPADES_ID, suit: Suit::Spades, value: Value::Nine, points: 18, multi: 1 }
}
pub fn NEON_TEN_SPADES() -> Card {
    Card { id: NEON_TEN_SPADES_ID, suit: Suit::Spades, value: Value::Ten, points: 20, multi: 1 }
}
pub fn NEON_JACK_SPADES() -> Card {
    Card { id: NEON_JACK_SPADES_ID, suit: Suit::Spades, value: Value::Jack, points: 20, multi: 1 }
}
pub fn NEON_QUEEN_SPADES() -> Card {
    Card { id: NEON_QUEEN_SPADES_ID, suit: Suit::Spades, value: Value::Queen, points: 20, multi: 1 }
}
pub fn NEON_KING_SPADES() -> Card {
    Card { id: NEON_KING_SPADES_ID, suit: Suit::Spades, value: Value::King, points: 20, multi: 1 }
}
pub fn NEON_ACE_SPADES() -> Card {
    Card { id: NEON_ACE_SPADES_ID, suit: Suit::Spades, value: Value::Ace, points: 22, multi: 1 }
}
pub fn NEON_TWO_DIAMONDS() -> Card {
    Card { id: NEON_TWO_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Two, points: 4, multi: 1 }
}
pub fn NEON_THREE_DIAMONDS() -> Card {
    Card { id: NEON_THREE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Three, points: 6, multi: 1 }
}
pub fn NEON_FOUR_DIAMONDS() -> Card {
    Card { id: NEON_FOUR_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Four, points: 8, multi: 1 }
}
pub fn NEON_FIVE_DIAMONDS() -> Card {
    Card { id: NEON_FIVE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Five, points: 10, multi: 1 }
}
pub fn NEON_SIX_DIAMONDS() -> Card {
    Card { id: NEON_SIX_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Six, points: 12, multi: 1 }
}
pub fn NEON_SEVEN_DIAMONDS() -> Card {
    Card { id: NEON_SEVEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Seven, points: 14, multi: 1 }
}
pub fn NEON_EIGHT_DIAMONDS() -> Card {
    Card { id: NEON_EIGHT_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Eight, points: 16, multi: 1 }
}
pub fn NEON_NINE_DIAMONDS() -> Card {
    Card { id: NEON_NINE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Nine, points: 18, multi: 1 }
}
pub fn NEON_TEN_DIAMONDS() -> Card {
    Card { id: NEON_TEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Ten, points: 20, multi: 1 }
}
pub fn NEON_JACK_DIAMONDS() -> Card {
    Card { id: NEON_JACK_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Jack, points: 20, multi: 1 }
}
pub fn NEON_QUEEN_DIAMONDS() -> Card {
    Card { id: NEON_QUEEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Queen, points: 20, multi: 1 }
}
pub fn NEON_KING_DIAMONDS() -> Card {
    Card { id: NEON_KING_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::King, points: 20, multi: 1 }
}
pub fn NEON_ACE_DIAMONDS() -> Card {
    Card { id: NEON_ACE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Ace, points: 22, multi: 1 }
}

pub fn NEON_TWO_CLUBS() -> Card {
    Card { id: NEON_TWO_CLUBS_ID, suit: Suit::Clubs, value: Value::Two, points: 4, multi: 1 }
}
pub fn NEON_THREE_CLUBS() -> Card {
    Card { id: NEON_THREE_CLUBS_ID, suit: Suit::Clubs, value: Value::Three, points: 6, multi: 1 }
}
pub fn NEON_FOUR_CLUBS() -> Card {
    Card { id: NEON_FOUR_CLUBS_ID, suit: Suit::Clubs, value: Value::Four, points: 8, multi: 1 }
}
pub fn NEON_FIVE_CLUBS() -> Card {
    Card { id: NEON_FIVE_CLUBS_ID, suit: Suit::Clubs, value: Value::Five, points: 10, multi: 1 }
}
pub fn NEON_SIX_CLUBS() -> Card {
    Card { id: NEON_SIX_CLUBS_ID, suit: Suit::Clubs, value: Value::Six, points: 12, multi: 1 }
}
pub fn NEON_SEVEN_CLUBS() -> Card {
    Card { id: NEON_SEVEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Seven, points: 14, multi: 1 }
}
pub fn NEON_EIGHT_CLUBS() -> Card {
    Card { id: NEON_EIGHT_CLUBS_ID, suit: Suit::Clubs, value: Value::Eight, points: 16, multi: 1 }
}
pub fn NEON_NINE_CLUBS() -> Card {
    Card { id: NEON_NINE_CLUBS_ID, suit: Suit::Clubs, value: Value::Nine, points: 18, multi: 1 }
}
pub fn NEON_TEN_CLUBS() -> Card {
    Card { id: NEON_TEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Ten, points: 20, multi: 1 }
}
pub fn NEON_JACK_CLUBS() -> Card {
    Card { id: NEON_JACK_CLUBS_ID, suit: Suit::Clubs, value: Value::Jack, points: 20, multi: 1 }
}
pub fn NEON_QUEEN_CLUBS() -> Card {
    Card { id: NEON_QUEEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Queen, points: 20, multi: 1 }
}
pub fn NEON_KING_CLUBS() -> Card {
    Card { id: NEON_KING_CLUBS_ID, suit: Suit::Clubs, value: Value::King, points: 20, multi: 1 }
}
pub fn NEON_ACE_CLUBS() -> Card {
    Card { id: NEON_ACE_CLUBS_ID, suit: Suit::Clubs, value: Value::Ace, points: 22, multi: 1 }
}

pub fn JOKER_CARD() -> Card {
    Card { id: JOKER_CARD_ID, suit: Suit::Joker, value: Value::Joker, points: 100, multi: 1 }
}

pub fn NEON_JOKER_CARD() -> Card {
    Card { id: NEON_JOKER_CARD_ID, suit: Suit::Joker, value: Value::NeonJoker, points: 200, multi: 2 }
}

pub fn WILD_CARD() -> Card {
    Card { id: WILD_CARD_ID, suit: Suit::Wild, value: Value::Wild, points: 0, multi: 0 }
}

pub fn NEON_WILD_CARD() -> Card {
    Card { id: NEON_WILD_CARD_ID, suit: Suit::Wild, value: Value::Wild, points: 0, multi: 1 }
}

pub fn INVALID_CARD() -> Card {
    Card { id: INVALID_CARD_ID, suit: Suit::None, value: Value::None, points: 0, multi: 0 }
}

pub fn traditional_cards_all() -> Array<u32> {
    array![
        TWO_CLUBS_ID, THREE_CLUBS_ID, FOUR_CLUBS_ID, FIVE_CLUBS_ID, SIX_CLUBS_ID, SEVEN_CLUBS_ID, EIGHT_CLUBS_ID,
        NINE_CLUBS_ID, TEN_CLUBS_ID, JACK_CLUBS_ID, QUEEN_CLUBS_ID, KING_CLUBS_ID, ACE_CLUBS_ID, TWO_DIAMONDS_ID,
        THREE_DIAMONDS_ID, FOUR_DIAMONDS_ID, FIVE_DIAMONDS_ID, SIX_DIAMONDS_ID, SEVEN_DIAMONDS_ID, EIGHT_DIAMONDS_ID,
        NINE_DIAMONDS_ID, TEN_DIAMONDS_ID, JACK_DIAMONDS_ID, QUEEN_DIAMONDS_ID, KING_DIAMONDS_ID, ACE_DIAMONDS_ID,
        TWO_HEARTS_ID, THREE_HEARTS_ID, FOUR_HEARTS_ID, FIVE_HEARTS_ID, SIX_HEARTS_ID, SEVEN_HEARTS_ID, EIGHT_HEARTS_ID,
        NINE_HEARTS_ID, TEN_HEARTS_ID, JACK_HEARTS_ID, QUEEN_HEARTS_ID, KING_HEARTS_ID, ACE_HEARTS_ID, TWO_SPADES_ID,
        THREE_SPADES_ID, FOUR_SPADES_ID, FIVE_SPADES_ID, SIX_SPADES_ID, SEVEN_SPADES_ID, EIGHT_SPADES_ID,
        NINE_SPADES_ID, TEN_SPADES_ID, JACK_SPADES_ID, QUEEN_SPADES_ID, KING_SPADES_ID, ACE_SPADES_ID,
    ]
}

pub fn neon_cards_all() -> Array<u32> {
    array![
        NEON_TWO_CLUBS_ID, NEON_THREE_CLUBS_ID, NEON_FOUR_CLUBS_ID, NEON_FIVE_CLUBS_ID, NEON_SIX_CLUBS_ID,
        NEON_SEVEN_CLUBS_ID, NEON_EIGHT_CLUBS_ID, NEON_NINE_CLUBS_ID, NEON_TEN_CLUBS_ID, NEON_JACK_CLUBS_ID,
        NEON_QUEEN_CLUBS_ID, NEON_KING_CLUBS_ID, NEON_ACE_CLUBS_ID, NEON_TWO_DIAMONDS_ID, NEON_THREE_DIAMONDS_ID,
        NEON_FOUR_DIAMONDS_ID, NEON_FIVE_DIAMONDS_ID, NEON_SIX_DIAMONDS_ID, NEON_SEVEN_DIAMONDS_ID,
        NEON_EIGHT_DIAMONDS_ID, NEON_NINE_DIAMONDS_ID, NEON_TEN_DIAMONDS_ID, NEON_JACK_DIAMONDS_ID,
        NEON_QUEEN_DIAMONDS_ID, NEON_KING_DIAMONDS_ID, NEON_ACE_DIAMONDS_ID, NEON_TWO_HEARTS_ID, NEON_THREE_HEARTS_ID,
        NEON_FOUR_HEARTS_ID, NEON_FIVE_HEARTS_ID, NEON_SIX_HEARTS_ID, NEON_SEVEN_HEARTS_ID, NEON_EIGHT_HEARTS_ID,
        NEON_NINE_HEARTS_ID, NEON_TEN_HEARTS_ID, NEON_JACK_HEARTS_ID, NEON_QUEEN_HEARTS_ID, NEON_KING_HEARTS_ID,
        NEON_ACE_HEARTS_ID, NEON_TWO_SPADES_ID, NEON_THREE_SPADES_ID, NEON_FOUR_SPADES_ID, NEON_FIVE_SPADES_ID,
        NEON_SIX_SPADES_ID, NEON_SEVEN_SPADES_ID, NEON_EIGHT_SPADES_ID, NEON_NINE_SPADES_ID, NEON_TEN_SPADES_ID,
        NEON_JACK_SPADES_ID, NEON_QUEEN_SPADES_ID, NEON_KING_SPADES_ID, NEON_ACE_SPADES_ID,
    ]
}

pub fn all_cards() -> Array<u32> {
    array![
        TWO_CLUBS_ID, THREE_CLUBS_ID, FOUR_CLUBS_ID, FIVE_CLUBS_ID, SIX_CLUBS_ID, SEVEN_CLUBS_ID, EIGHT_CLUBS_ID,
        NINE_CLUBS_ID, TEN_CLUBS_ID, JACK_CLUBS_ID, QUEEN_CLUBS_ID, KING_CLUBS_ID, ACE_CLUBS_ID, TWO_DIAMONDS_ID,
        THREE_DIAMONDS_ID, FOUR_DIAMONDS_ID, FIVE_DIAMONDS_ID, SIX_DIAMONDS_ID, SEVEN_DIAMONDS_ID, EIGHT_DIAMONDS_ID,
        NINE_DIAMONDS_ID, TEN_DIAMONDS_ID, JACK_DIAMONDS_ID, QUEEN_DIAMONDS_ID, KING_DIAMONDS_ID, ACE_DIAMONDS_ID,
        TWO_HEARTS_ID, THREE_HEARTS_ID, FOUR_HEARTS_ID, FIVE_HEARTS_ID, SIX_HEARTS_ID, SEVEN_HEARTS_ID, EIGHT_HEARTS_ID,
        NINE_HEARTS_ID, TEN_HEARTS_ID, JACK_HEARTS_ID, QUEEN_HEARTS_ID, KING_HEARTS_ID, ACE_HEARTS_ID, TWO_SPADES_ID,
        THREE_SPADES_ID, FOUR_SPADES_ID, FIVE_SPADES_ID, SIX_SPADES_ID, SEVEN_SPADES_ID, EIGHT_SPADES_ID,
        NINE_SPADES_ID, TEN_SPADES_ID, JACK_SPADES_ID, QUEEN_SPADES_ID, KING_SPADES_ID, ACE_SPADES_ID,
        NEON_TWO_CLUBS_ID, NEON_THREE_CLUBS_ID, NEON_FOUR_CLUBS_ID, NEON_FIVE_CLUBS_ID, NEON_SIX_CLUBS_ID,
        NEON_SEVEN_CLUBS_ID, NEON_EIGHT_CLUBS_ID, NEON_NINE_CLUBS_ID, NEON_TEN_CLUBS_ID, NEON_JACK_CLUBS_ID,
        NEON_QUEEN_CLUBS_ID, NEON_KING_CLUBS_ID, NEON_ACE_CLUBS_ID, NEON_TWO_DIAMONDS_ID, NEON_THREE_DIAMONDS_ID,
        NEON_FOUR_DIAMONDS_ID, NEON_FIVE_DIAMONDS_ID, NEON_SIX_DIAMONDS_ID, NEON_SEVEN_DIAMONDS_ID,
        NEON_EIGHT_DIAMONDS_ID, NEON_NINE_DIAMONDS_ID, NEON_TEN_DIAMONDS_ID, NEON_JACK_DIAMONDS_ID,
        NEON_QUEEN_DIAMONDS_ID, NEON_KING_DIAMONDS_ID, NEON_ACE_DIAMONDS_ID, NEON_TWO_HEARTS_ID, NEON_THREE_HEARTS_ID,
        NEON_FOUR_HEARTS_ID, NEON_FIVE_HEARTS_ID, NEON_SIX_HEARTS_ID, NEON_SEVEN_HEARTS_ID, NEON_EIGHT_HEARTS_ID,
        NEON_NINE_HEARTS_ID, NEON_TEN_HEARTS_ID, NEON_JACK_HEARTS_ID, NEON_QUEEN_HEARTS_ID, NEON_KING_HEARTS_ID,
        NEON_ACE_HEARTS_ID, NEON_TWO_SPADES_ID, NEON_THREE_SPADES_ID, NEON_FOUR_SPADES_ID, NEON_FIVE_SPADES_ID,
        NEON_SIX_SPADES_ID, NEON_SEVEN_SPADES_ID, NEON_EIGHT_SPADES_ID, NEON_NINE_SPADES_ID, NEON_TEN_SPADES_ID,
        NEON_JACK_SPADES_ID, NEON_QUEEN_SPADES_ID, NEON_KING_SPADES_ID, NEON_ACE_SPADES_ID,
    ]
}

pub fn neon_hearts_cards() -> Array<u32> {
    array![
        NEON_TWO_HEARTS_ID, NEON_THREE_HEARTS_ID, NEON_FOUR_HEARTS_ID, NEON_FIVE_HEARTS_ID, NEON_SIX_HEARTS_ID,
        NEON_SEVEN_HEARTS_ID, NEON_EIGHT_HEARTS_ID, NEON_NINE_HEARTS_ID, NEON_TEN_HEARTS_ID, NEON_JACK_HEARTS_ID,
        NEON_QUEEN_HEARTS_ID, NEON_KING_HEARTS_ID, NEON_ACE_HEARTS_ID,
    ]
}

pub fn all_hearts_cards() -> Array<u32> {
    array![
        TWO_HEARTS_ID, THREE_HEARTS_ID, FOUR_HEARTS_ID, FIVE_HEARTS_ID, SIX_HEARTS_ID, SEVEN_HEARTS_ID, EIGHT_HEARTS_ID,
        NINE_HEARTS_ID, TEN_HEARTS_ID, JACK_HEARTS_ID, QUEEN_HEARTS_ID, KING_HEARTS_ID, ACE_HEARTS_ID,
        NEON_TWO_HEARTS_ID, NEON_THREE_HEARTS_ID, NEON_FOUR_HEARTS_ID, NEON_FIVE_HEARTS_ID, NEON_SIX_HEARTS_ID,
        NEON_SEVEN_HEARTS_ID, NEON_EIGHT_HEARTS_ID, NEON_NINE_HEARTS_ID, NEON_TEN_HEARTS_ID, NEON_JACK_HEARTS_ID,
        NEON_QUEEN_HEARTS_ID, NEON_KING_HEARTS_ID, NEON_ACE_HEARTS_ID,
    ]
}

pub fn get_card(id: u32) -> Card {
    if id <= 51 {
        get_traditional_card(id)
    } else if id == JOKER_CARD_ID {
        JOKER_CARD()
    } else if id == NEON_JOKER_CARD_ID {
        NEON_JOKER_CARD()
    } else if id == WILD_CARD_ID {
        WILD_CARD()
    } else if id == NEON_WILD_CARD_ID {
        NEON_WILD_CARD()
    } else {
        get_neon_card(id)
    }
}

pub fn get_traditional_card(id: u32) -> Card {
    if id == TWO_CLUBS_ID {
        TWO_CLUBS()
    } else if id == THREE_CLUBS_ID {
        THREE_CLUBS()
    } else if id == FOUR_CLUBS_ID {
        FOUR_CLUBS()
    } else if id == FIVE_CLUBS_ID {
        FIVE_CLUBS()
    } else if id == SIX_CLUBS_ID {
        SIX_CLUBS()
    } else if id == SEVEN_CLUBS_ID {
        SEVEN_CLUBS()
    } else if id == EIGHT_CLUBS_ID {
        EIGHT_CLUBS()
    } else if id == NINE_CLUBS_ID {
        NINE_CLUBS()
    } else if id == TEN_CLUBS_ID {
        TEN_CLUBS()
    } else if id == JACK_CLUBS_ID {
        JACK_CLUBS()
    } else if id == QUEEN_CLUBS_ID {
        QUEEN_CLUBS()
    } else if id == KING_CLUBS_ID {
        KING_CLUBS()
    } else if id == ACE_CLUBS_ID {
        ACE_CLUBS()
    } else if id == TWO_DIAMONDS_ID {
        TWO_DIAMONDS()
    } else if id == THREE_DIAMONDS_ID {
        THREE_DIAMONDS()
    } else if id == FOUR_DIAMONDS_ID {
        FOUR_DIAMONDS()
    } else if id == FIVE_DIAMONDS_ID {
        FIVE_DIAMONDS()
    } else if id == SIX_DIAMONDS_ID {
        SIX_DIAMONDS()
    } else if id == SEVEN_DIAMONDS_ID {
        SEVEN_DIAMONDS()
    } else if id == EIGHT_DIAMONDS_ID {
        EIGHT_DIAMONDS()
    } else if id == NINE_DIAMONDS_ID {
        NINE_DIAMONDS()
    } else if id == TEN_DIAMONDS_ID {
        TEN_DIAMONDS()
    } else if id == JACK_DIAMONDS_ID {
        JACK_DIAMONDS()
    } else if id == QUEEN_DIAMONDS_ID {
        QUEEN_DIAMONDS()
    } else if id == KING_DIAMONDS_ID {
        KING_DIAMONDS()
    } else if id == ACE_DIAMONDS_ID {
        ACE_DIAMONDS()
    } else if id == TWO_HEARTS_ID {
        TWO_HEARTS()
    } else if id == THREE_HEARTS_ID {
        THREE_HEARTS()
    } else if id == FOUR_HEARTS_ID {
        FOUR_HEARTS()
    } else if id == FIVE_HEARTS_ID {
        FIVE_HEARTS()
    } else if id == SIX_HEARTS_ID {
        SIX_HEARTS()
    } else if id == SEVEN_HEARTS_ID {
        SEVEN_HEARTS()
    } else if id == EIGHT_HEARTS_ID {
        EIGHT_HEARTS()
    } else if id == NINE_HEARTS_ID {
        NINE_HEARTS()
    } else if id == TEN_HEARTS_ID {
        TEN_HEARTS()
    } else if id == JACK_HEARTS_ID {
        JACK_HEARTS()
    } else if id == QUEEN_HEARTS_ID {
        QUEEN_HEARTS()
    } else if id == KING_HEARTS_ID {
        KING_HEARTS()
    } else if id == ACE_HEARTS_ID {
        ACE_HEARTS()
    } else if id == TWO_SPADES_ID {
        TWO_SPADES()
    } else if id == THREE_SPADES_ID {
        THREE_SPADES()
    } else if id == FOUR_SPADES_ID {
        FOUR_SPADES()
    } else if id == FIVE_SPADES_ID {
        FIVE_SPADES()
    } else if id == SIX_SPADES_ID {
        SIX_SPADES()
    } else if id == SEVEN_SPADES_ID {
        SEVEN_SPADES()
    } else if id == EIGHT_SPADES_ID {
        EIGHT_SPADES()
    } else if id == NINE_SPADES_ID {
        NINE_SPADES()
    } else if id == TEN_SPADES_ID {
        TEN_SPADES()
    } else if id == JACK_SPADES_ID {
        JACK_SPADES()
    } else if id == QUEEN_SPADES_ID {
        QUEEN_SPADES()
    } else if id == KING_SPADES_ID {
        KING_SPADES()
    } else if id == ACE_SPADES_ID {
        ACE_SPADES()
    } else {
        INVALID_CARD()
    }
}

pub fn get_neon_card(id: u32) -> Card {
    if id == NEON_TWO_CLUBS_ID {
        NEON_TWO_CLUBS()
    } else if id == NEON_THREE_CLUBS_ID {
        NEON_THREE_CLUBS()
    } else if id == NEON_FOUR_CLUBS_ID {
        NEON_FOUR_CLUBS()
    } else if id == NEON_FIVE_CLUBS_ID {
        NEON_FIVE_CLUBS()
    } else if id == NEON_SIX_CLUBS_ID {
        NEON_SIX_CLUBS()
    } else if id == NEON_SEVEN_CLUBS_ID {
        NEON_SEVEN_CLUBS()
    } else if id == NEON_EIGHT_CLUBS_ID {
        NEON_EIGHT_CLUBS()
    } else if id == NEON_NINE_CLUBS_ID {
        NEON_NINE_CLUBS()
    } else if id == NEON_TEN_CLUBS_ID {
        NEON_TEN_CLUBS()
    } else if id == NEON_JACK_CLUBS_ID {
        NEON_JACK_CLUBS()
    } else if id == NEON_QUEEN_CLUBS_ID {
        NEON_QUEEN_CLUBS()
    } else if id == NEON_KING_CLUBS_ID {
        NEON_KING_CLUBS()
    } else if id == NEON_ACE_CLUBS_ID {
        NEON_ACE_CLUBS()
    } else if id == NEON_TWO_DIAMONDS_ID {
        NEON_TWO_DIAMONDS()
    } else if id == NEON_THREE_DIAMONDS_ID {
        NEON_THREE_DIAMONDS()
    } else if id == NEON_FOUR_DIAMONDS_ID {
        NEON_FOUR_DIAMONDS()
    } else if id == NEON_FIVE_DIAMONDS_ID {
        NEON_FIVE_DIAMONDS()
    } else if id == NEON_SIX_DIAMONDS_ID {
        NEON_SIX_DIAMONDS()
    } else if id == NEON_SEVEN_DIAMONDS_ID {
        NEON_SEVEN_DIAMONDS()
    } else if id == NEON_EIGHT_DIAMONDS_ID {
        NEON_EIGHT_DIAMONDS()
    } else if id == NEON_NINE_DIAMONDS_ID {
        NEON_NINE_DIAMONDS()
    } else if id == NEON_TEN_DIAMONDS_ID {
        NEON_TEN_DIAMONDS()
    } else if id == NEON_JACK_DIAMONDS_ID {
        NEON_JACK_DIAMONDS()
    } else if id == NEON_QUEEN_DIAMONDS_ID {
        NEON_QUEEN_DIAMONDS()
    } else if id == NEON_KING_DIAMONDS_ID {
        NEON_KING_DIAMONDS()
    } else if id == NEON_ACE_DIAMONDS_ID {
        NEON_ACE_DIAMONDS()
    } else if id == NEON_TWO_HEARTS_ID {
        NEON_TWO_HEARTS()
    } else if id == NEON_THREE_HEARTS_ID {
        NEON_THREE_HEARTS()
    } else if id == NEON_FOUR_HEARTS_ID {
        NEON_FOUR_HEARTS()
    } else if id == NEON_FIVE_HEARTS_ID {
        NEON_FIVE_HEARTS()
    } else if id == NEON_SIX_HEARTS_ID {
        NEON_SIX_HEARTS()
    } else if id == NEON_SEVEN_HEARTS_ID {
        NEON_SEVEN_HEARTS()
    } else if id == NEON_EIGHT_HEARTS_ID {
        NEON_EIGHT_HEARTS()
    } else if id == NEON_NINE_HEARTS_ID {
        NEON_NINE_HEARTS()
    } else if id == NEON_TEN_HEARTS_ID {
        NEON_TEN_HEARTS()
    } else if id == NEON_JACK_HEARTS_ID {
        NEON_JACK_HEARTS()
    } else if id == NEON_QUEEN_HEARTS_ID {
        NEON_QUEEN_HEARTS()
    } else if id == NEON_KING_HEARTS_ID {
        NEON_KING_HEARTS()
    } else if id == NEON_ACE_HEARTS_ID {
        NEON_ACE_HEARTS()
    } else if id == NEON_TWO_SPADES_ID {
        NEON_TWO_SPADES()
    } else if id == NEON_THREE_SPADES_ID {
        NEON_THREE_SPADES()
    } else if id == NEON_FOUR_SPADES_ID {
        NEON_FOUR_SPADES()
    } else if id == NEON_FIVE_SPADES_ID {
        NEON_FIVE_SPADES()
    } else if id == NEON_SIX_SPADES_ID {
        NEON_SIX_SPADES()
    } else if id == NEON_SEVEN_SPADES_ID {
        NEON_SEVEN_SPADES()
    } else if id == NEON_EIGHT_SPADES_ID {
        NEON_EIGHT_SPADES()
    } else if id == NEON_NINE_SPADES_ID {
        NEON_NINE_SPADES()
    } else if id == NEON_TEN_SPADES_ID {
        NEON_TEN_SPADES()
    } else if id == NEON_JACK_SPADES_ID {
        NEON_JACK_SPADES()
    } else if id == NEON_QUEEN_SPADES_ID {
        NEON_QUEEN_SPADES()
    } else if id == NEON_KING_SPADES_ID {
        NEON_KING_SPADES()
    } else if id == NEON_ACE_SPADES_ID {
        NEON_ACE_SPADES()
    } else {
        INVALID_CARD()
    }
}
