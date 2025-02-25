use jokers_of_neon_lib::models::data::card::{Card, Suit, Value};

// Traditional cards
const TWO_CLUBS_ID: u32 = 0;
const THREE_CLUBS_ID: u32 = 1;
const FOUR_CLUBS_ID: u32 = 2;
const FIVE_CLUBS_ID: u32 = 3;
const SIX_CLUBS_ID: u32 = 4;
const SEVEN_CLUBS_ID: u32 = 5;
const EIGHT_CLUBS_ID: u32 = 6;
const NINE_CLUBS_ID: u32 = 7;
const TEN_CLUBS_ID: u32 = 8;
const JACK_CLUBS_ID: u32 = 9;
const QUEEN_CLUBS_ID: u32 = 10;
const KING_CLUBS_ID: u32 = 11;
const ACE_CLUBS_ID: u32 = 12;
const TWO_DIAMONDS_ID: u32 = 13;
const THREE_DIAMONDS_ID: u32 = 14;
const FOUR_DIAMONDS_ID: u32 = 15;
const FIVE_DIAMONDS_ID: u32 = 16;
const SIX_DIAMONDS_ID: u32 = 17;
const SEVEN_DIAMONDS_ID: u32 = 18;
const EIGHT_DIAMONDS_ID: u32 = 19;
const NINE_DIAMONDS_ID: u32 = 20;
const TEN_DIAMONDS_ID: u32 = 21;
const JACK_DIAMONDS_ID: u32 = 22;
const QUEEN_DIAMONDS_ID: u32 = 23;
const KING_DIAMONDS_ID: u32 = 24;
const ACE_DIAMONDS_ID: u32 = 25;
const TWO_HEARTS_ID: u32 = 26;
const THREE_HEARTS_ID: u32 = 27;
const FOUR_HEARTS_ID: u32 = 28;
const FIVE_HEARTS_ID: u32 = 29;
const SIX_HEARTS_ID: u32 = 30;
const SEVEN_HEARTS_ID: u32 = 31;
const EIGHT_HEARTS_ID: u32 = 32;
const NINE_HEARTS_ID: u32 = 33;
const TEN_HEARTS_ID: u32 = 34;
const JACK_HEARTS_ID: u32 = 35;
const QUEEN_HEARTS_ID: u32 = 36;
const KING_HEARTS_ID: u32 = 37;
const ACE_HEARTS_ID: u32 = 38;
const TWO_SPADES_ID: u32 = 39;
const THREE_SPADES_ID: u32 = 40;
const FOUR_SPADES_ID: u32 = 41;
const FIVE_SPADES_ID: u32 = 42;
const SIX_SPADES_ID: u32 = 43;
const SEVEN_SPADES_ID: u32 = 44;
const EIGHT_SPADES_ID: u32 = 45;
const NINE_SPADES_ID: u32 = 46;
const TEN_SPADES_ID: u32 = 47;
const JACK_SPADES_ID: u32 = 48;
const QUEEN_SPADES_ID: u32 = 49;
const KING_SPADES_ID: u32 = 50;
const ACE_SPADES_ID: u32 = 51;

const NEON_TWO_CLUBS_ID: u32 = 200;
const NEON_THREE_CLUBS_ID: u32 = 201;
const NEON_FOUR_CLUBS_ID: u32 = 202;
const NEON_FIVE_CLUBS_ID: u32 = 203;
const NEON_SIX_CLUBS_ID: u32 = 204;
const NEON_SEVEN_CLUBS_ID: u32 = 205;
const NEON_EIGHT_CLUBS_ID: u32 = 206;
const NEON_NINE_CLUBS_ID: u32 = 207;
const NEON_TEN_CLUBS_ID: u32 = 208;
const NEON_JACK_CLUBS_ID: u32 = 209;
const NEON_QUEEN_CLUBS_ID: u32 = 210;
const NEON_KING_CLUBS_ID: u32 = 211;
const NEON_ACE_CLUBS_ID: u32 = 212;
const NEON_TWO_DIAMONDS_ID: u32 = 213;
const NEON_THREE_DIAMONDS_ID: u32 = 214;
const NEON_FOUR_DIAMONDS_ID: u32 = 215;
const NEON_FIVE_DIAMONDS_ID: u32 = 216;
const NEON_SIX_DIAMONDS_ID: u32 = 217;
const NEON_SEVEN_DIAMONDS_ID: u32 = 218;
const NEON_EIGHT_DIAMONDS_ID: u32 = 219;
const NEON_NINE_DIAMONDS_ID: u32 = 220;
const NEON_TEN_DIAMONDS_ID: u32 = 221;
const NEON_JACK_DIAMONDS_ID: u32 = 222;
const NEON_QUEEN_DIAMONDS_ID: u32 = 223;
const NEON_KING_DIAMONDS_ID: u32 = 224;
const NEON_ACE_DIAMONDS_ID: u32 = 225;
const NEON_TWO_HEARTS_ID: u32 = 226;
const NEON_THREE_HEARTS_ID: u32 = 227;
const NEON_FOUR_HEARTS_ID: u32 = 228;
const NEON_FIVE_HEARTS_ID: u32 = 229;
const NEON_SIX_HEARTS_ID: u32 = 230;
const NEON_SEVEN_HEARTS_ID: u32 = 231;
const NEON_EIGHT_HEARTS_ID: u32 = 232;
const NEON_NINE_HEARTS_ID: u32 = 233;
const NEON_TEN_HEARTS_ID: u32 = 234;
const NEON_JACK_HEARTS_ID: u32 = 235;
const NEON_QUEEN_HEARTS_ID: u32 = 236;
const NEON_KING_HEARTS_ID: u32 = 237;
const NEON_ACE_HEARTS_ID: u32 = 238;
const NEON_TWO_SPADES_ID: u32 = 239;
const NEON_THREE_SPADES_ID: u32 = 240;
const NEON_FOUR_SPADES_ID: u32 = 241;
const NEON_FIVE_SPADES_ID: u32 = 242;
const NEON_SIX_SPADES_ID: u32 = 243;
const NEON_SEVEN_SPADES_ID: u32 = 244;
const NEON_EIGHT_SPADES_ID: u32 = 245;
const NEON_NINE_SPADES_ID: u32 = 246;
const NEON_TEN_SPADES_ID: u32 = 247;
const NEON_JACK_SPADES_ID: u32 = 248;
const NEON_QUEEN_SPADES_ID: u32 = 249;
const NEON_KING_SPADES_ID: u32 = 250;
const NEON_ACE_SPADES_ID: u32 = 251;

const JOKER_CARD: u32 = 52;
const NEON_JOKER_CARD: u32 = 252;
const WILD_CARD: u32 = 53;
const NEON_WILD_CARD: u32 = 253;
const INVALID_CARD: u32 = 9999;

// TRADITIONALS
fn TWO_CLUBS() -> Card {
    Card { id: TWO_CLUBS_ID, suit: Suit::Clubs, value: Value::Two, points: 2, multi_add: 0 }
}
fn THREE_CLUBS() -> Card {
    Card { id: THREE_CLUBS_ID, suit: Suit::Clubs, value: Value::Three, points: 3, multi_add: 0 }
}
fn FOUR_CLUBS() -> Card {
    Card { id: FOUR_CLUBS_ID, suit: Suit::Clubs, value: Value::Four, points: 4, multi_add: 0 }
}
fn FIVE_CLUBS() -> Card {
    Card { id: FIVE_CLUBS_ID, suit: Suit::Clubs, value: Value::Five, points: 5, multi_add: 0 }
}
fn SIX_CLUBS() -> Card {
    Card { id: SIX_CLUBS_ID, suit: Suit::Clubs, value: Value::Six, points: 6, multi_add: 0 }
}
fn SEVEN_CLUBS() -> Card {
    Card { id: SEVEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Seven, points: 7, multi_add: 0 }
}
fn EIGHT_CLUBS() -> Card {
    Card { id: EIGHT_CLUBS_ID, suit: Suit::Clubs, value: Value::Eight, points: 8, multi_add: 0 }
}
fn NINE_CLUBS() -> Card {
    Card { id: NINE_CLUBS_ID, suit: Suit::Clubs, value: Value::Nine, points: 9, multi_add: 0 }
}
fn TEN_CLUBS() -> Card {
    Card { id: TEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Ten, points: 10, multi_add: 0 }
}
fn JACK_CLUBS() -> Card {
    Card { id: JACK_CLUBS_ID, suit: Suit::Clubs, value: Value::Jack, points: 10, multi_add: 0 }
}
fn QUEEN_CLUBS() -> Card {
    Card { id: QUEEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Queen, points: 10, multi_add: 0 }
}
fn KING_CLUBS() -> Card {
    Card { id: KING_CLUBS_ID, suit: Suit::Clubs, value: Value::King, points: 10, multi_add: 0 }
}
fn ACE_CLUBS() -> Card {
    Card { id: ACE_CLUBS_ID, suit: Suit::Clubs, value: Value::Ace, points: 11, multi_add: 0 }
}

fn TWO_DIAMONDS() -> Card {
    Card { id: TWO_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Two, points: 2, multi_add: 0 }
}
fn THREE_DIAMONDS() -> Card {
    Card { id: THREE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Three, points: 3, multi_add: 0 }
}
fn FOUR_DIAMONDS() -> Card {
    Card { id: FOUR_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Four, points: 4, multi_add: 0 }
}
fn FIVE_DIAMONDS() -> Card {
    Card { id: FIVE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Five, points: 5, multi_add: 0 }
}
fn SIX_DIAMONDS() -> Card {
    Card { id: SIX_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Six, points: 6, multi_add: 0 }
}
fn SEVEN_DIAMONDS() -> Card {
    Card { id: SEVEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Seven, points: 7, multi_add: 0 }
}
fn EIGHT_DIAMONDS() -> Card {
    Card { id: EIGHT_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Eight, points: 8, multi_add: 0 }
}
fn NINE_DIAMONDS() -> Card {
    Card { id: NINE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Nine, points: 9, multi_add: 0 }
}
fn TEN_DIAMONDS() -> Card {
    Card { id: TEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Ten, points: 10, multi_add: 0 }
}
fn JACK_DIAMONDS() -> Card {
    Card { id: JACK_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Jack, points: 10, multi_add: 0 }
}
fn QUEEN_DIAMONDS() -> Card {
    Card { id: QUEEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Queen, points: 10, multi_add: 0 }
}
fn KING_DIAMONDS() -> Card {
    Card { id: KING_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::King, points: 10, multi_add: 0 }
}
fn ACE_DIAMONDS() -> Card {
    Card { id: ACE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Ace, points: 11, multi_add: 0 }
}

fn TWO_HEARTS() -> Card {
    Card { id: TWO_HEARTS_ID, suit: Suit::Hearts, value: Value::Two, points: 2, multi_add: 0 }
}
fn THREE_HEARTS() -> Card {
    Card { id: THREE_HEARTS_ID, suit: Suit::Hearts, value: Value::Three, points: 3, multi_add: 0 }
}
fn FOUR_HEARTS() -> Card {
    Card { id: FOUR_HEARTS_ID, suit: Suit::Hearts, value: Value::Four, points: 4, multi_add: 0 }
}
fn FIVE_HEARTS() -> Card {
    Card { id: FIVE_HEARTS_ID, suit: Suit::Hearts, value: Value::Five, points: 5, multi_add: 0 }
}
fn SIX_HEARTS() -> Card {
    Card { id: SIX_HEARTS_ID, suit: Suit::Hearts, value: Value::Six, points: 6, multi_add: 0 }
}
fn SEVEN_HEARTS() -> Card {
    Card { id: SEVEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Seven, points: 7, multi_add: 0 }
}
fn EIGHT_HEARTS() -> Card {
    Card { id: EIGHT_HEARTS_ID, suit: Suit::Hearts, value: Value::Eight, points: 8, multi_add: 0 }
}
fn NINE_HEARTS() -> Card {
    Card { id: NINE_HEARTS_ID, suit: Suit::Hearts, value: Value::Nine, points: 9, multi_add: 0 }
}
fn TEN_HEARTS() -> Card {
    Card { id: TEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Ten, points: 10, multi_add: 0 }
}
fn JACK_HEARTS() -> Card {
    Card { id: JACK_HEARTS_ID, suit: Suit::Hearts, value: Value::Jack, points: 10, multi_add: 0 }
}
fn QUEEN_HEARTS() -> Card {
    Card { id: QUEEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Queen, points: 10, multi_add: 0 }
}
fn KING_HEARTS() -> Card {
    Card { id: KING_HEARTS_ID, suit: Suit::Hearts, value: Value::King, points: 10, multi_add: 0 }
}
fn ACE_HEARTS() -> Card {
    Card { id: ACE_HEARTS_ID, suit: Suit::Hearts, value: Value::Ace, points: 11, multi_add: 0 }
}

fn TWO_SPADES() -> Card {
    Card { id: TWO_SPADES_ID, suit: Suit::Spades, value: Value::Two, points: 2, multi_add: 0 }
}
fn THREE_SPADES() -> Card {
    Card { id: THREE_SPADES_ID, suit: Suit::Spades, value: Value::Three, points: 3, multi_add: 0 }
}
fn FOUR_SPADES() -> Card {
    Card { id: FOUR_SPADES_ID, suit: Suit::Spades, value: Value::Four, points: 4, multi_add: 0 }
}
fn FIVE_SPADES() -> Card {
    Card { id: FIVE_SPADES_ID, suit: Suit::Spades, value: Value::Five, points: 5, multi_add: 0 }
}
fn SIX_SPADES() -> Card {
    Card { id: SIX_SPADES_ID, suit: Suit::Spades, value: Value::Six, points: 6, multi_add: 0 }
}
fn SEVEN_SPADES() -> Card {
    Card { id: SEVEN_SPADES_ID, suit: Suit::Spades, value: Value::Seven, points: 7, multi_add: 0 }
}
fn EIGHT_SPADES() -> Card {
    Card { id: EIGHT_SPADES_ID, suit: Suit::Spades, value: Value::Eight, points: 8, multi_add: 0 }
}
fn NINE_SPADES() -> Card {
    Card { id: NINE_SPADES_ID, suit: Suit::Spades, value: Value::Nine, points: 9, multi_add: 0 }
}
fn TEN_SPADES() -> Card {
    Card { id: TEN_SPADES_ID, suit: Suit::Spades, value: Value::Ten, points: 10, multi_add: 0 }
}
fn JACK_SPADES() -> Card {
    Card { id: JACK_SPADES_ID, suit: Suit::Spades, value: Value::Jack, points: 10, multi_add: 0 }
}
fn QUEEN_SPADES() -> Card {
    Card { id: QUEEN_SPADES_ID, suit: Suit::Spades, value: Value::Queen, points: 10, multi_add: 0 }
}
fn KING_SPADES() -> Card {
    Card { id: KING_SPADES_ID, suit: Suit::Spades, value: Value::King, points: 10, multi_add: 0 }
}
fn ACE_SPADES() -> Card {
    Card { id: ACE_SPADES_ID, suit: Suit::Spades, value: Value::Ace, points: 11, multi_add: 0 }
}

// NEON
fn NEON_TWO_HEARTS() -> Card {
    Card { id: NEON_TWO_HEARTS_ID, suit: Suit::Hearts, value: Value::Two, points: 4, multi_add: 1 }
}
fn NEON_THREE_HEARTS() -> Card {
    Card { id: NEON_THREE_HEARTS_ID, suit: Suit::Hearts, value: Value::Three, points: 6, multi_add: 1 }
}
fn NEON_FOUR_HEARTS() -> Card {
    Card { id: NEON_FOUR_HEARTS_ID, suit: Suit::Hearts, value: Value::Four, points: 8, multi_add: 1 }
}
fn NEON_FIVE_HEARTS() -> Card {
    Card { id: NEON_FIVE_HEARTS_ID, suit: Suit::Hearts, value: Value::Five, points: 10, multi_add: 1 }
}
fn NEON_SIX_HEARTS() -> Card {
    Card { id: NEON_SIX_HEARTS_ID, suit: Suit::Hearts, value: Value::Six, points: 12, multi_add: 1 }
}
fn NEON_SEVEN_HEARTS() -> Card {
    Card { id: NEON_SEVEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Seven, points: 14, multi_add: 1 }
}
fn NEON_EIGHT_HEARTS() -> Card {
    Card { id: NEON_EIGHT_HEARTS_ID, suit: Suit::Hearts, value: Value::Eight, points: 16, multi_add: 1 }
}
fn NEON_NINE_HEARTS() -> Card {
    Card { id: NEON_NINE_HEARTS_ID, suit: Suit::Hearts, value: Value::Nine, points: 18, multi_add: 1 }
}
fn NEON_TEN_HEARTS() -> Card {
    Card { id: NEON_TEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Ten, points: 20, multi_add: 1 }
}
fn NEON_JACK_HEARTS() -> Card {
    Card { id: NEON_JACK_HEARTS_ID, suit: Suit::Hearts, value: Value::Jack, points: 20, multi_add: 1 }
}
fn NEON_QUEEN_HEARTS() -> Card {
    Card { id: NEON_QUEEN_HEARTS_ID, suit: Suit::Hearts, value: Value::Queen, points: 20, multi_add: 1 }
}
fn NEON_KING_HEARTS() -> Card {
    Card { id: NEON_KING_HEARTS_ID, suit: Suit::Hearts, value: Value::King, points: 20, multi_add: 1 }
}
fn NEON_ACE_HEARTS() -> Card {
    Card { id: NEON_ACE_HEARTS_ID, suit: Suit::Hearts, value: Value::Ace, points: 22, multi_add: 1 }
}

fn NEON_TWO_SPADES() -> Card {
    Card { id: NEON_TWO_SPADES_ID, suit: Suit::Spades, value: Value::Two, points: 4, multi_add: 1 }
}
fn NEON_THREE_SPADES() -> Card {
    Card { id: NEON_THREE_SPADES_ID, suit: Suit::Spades, value: Value::Three, points: 6, multi_add: 1 }
}
fn NEON_FOUR_SPADES() -> Card {
    Card { id: NEON_FOUR_SPADES_ID, suit: Suit::Spades, value: Value::Four, points: 8, multi_add: 1 }
}
fn NEON_FIVE_SPADES() -> Card {
    Card { id: NEON_FIVE_SPADES_ID, suit: Suit::Spades, value: Value::Five, points: 10, multi_add: 1 }
}
fn NEON_SIX_SPADES() -> Card {
    Card { id: NEON_SIX_SPADES_ID, suit: Suit::Spades, value: Value::Six, points: 12, multi_add: 1 }
}
fn NEON_SEVEN_SPADES() -> Card {
    Card { id: NEON_SEVEN_SPADES_ID, suit: Suit::Spades, value: Value::Seven, points: 14, multi_add: 1 }
}
fn NEON_EIGHT_SPADES() -> Card {
    Card { id: NEON_EIGHT_SPADES_ID, suit: Suit::Spades, value: Value::Eight, points: 16, multi_add: 1 }
}
fn NEON_NINE_SPADES() -> Card {
    Card { id: NEON_NINE_SPADES_ID, suit: Suit::Spades, value: Value::Nine, points: 18, multi_add: 1 }
}
fn NEON_TEN_SPADES() -> Card {
    Card { id: NEON_TEN_SPADES_ID, suit: Suit::Spades, value: Value::Ten, points: 20, multi_add: 1 }
}
fn NEON_JACK_SPADES() -> Card {
    Card { id: NEON_JACK_SPADES_ID, suit: Suit::Spades, value: Value::Jack, points: 20, multi_add: 1 }
}
fn NEON_QUEEN_SPADES() -> Card {
    Card { id: NEON_QUEEN_SPADES_ID, suit: Suit::Spades, value: Value::Queen, points: 20, multi_add: 1 }
}
fn NEON_KING_SPADES() -> Card {
    Card { id: NEON_KING_SPADES_ID, suit: Suit::Spades, value: Value::King, points: 20, multi_add: 1 }
}
fn NEON_ACE_SPADES() -> Card {
    Card { id: NEON_ACE_SPADES_ID, suit: Suit::Spades, value: Value::Ace, points: 22, multi_add: 1 }
}
fn NEON_TWO_DIAMONDS() -> Card {
    Card { id: NEON_TWO_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Two, points: 4, multi_add: 1 }
}
fn NEON_THREE_DIAMONDS() -> Card {
    Card { id: NEON_THREE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Three, points: 6, multi_add: 1 }
}
fn NEON_FOUR_DIAMONDS() -> Card {
    Card { id: NEON_FOUR_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Four, points: 8, multi_add: 1 }
}
fn NEON_FIVE_DIAMONDS() -> Card {
    Card { id: NEON_FIVE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Five, points: 10, multi_add: 1 }
}
fn NEON_SIX_DIAMONDS() -> Card {
    Card { id: NEON_SIX_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Six, points: 12, multi_add: 1 }
}
fn NEON_SEVEN_DIAMONDS() -> Card {
    Card { id: NEON_SEVEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Seven, points: 14, multi_add: 1 }
}
fn NEON_EIGHT_DIAMONDS() -> Card {
    Card { id: NEON_EIGHT_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Eight, points: 16, multi_add: 1 }
}
fn NEON_NINE_DIAMONDS() -> Card {
    Card { id: NEON_NINE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Nine, points: 18, multi_add: 1 }
}
fn NEON_TEN_DIAMONDS() -> Card {
    Card { id: NEON_TEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Ten, points: 20, multi_add: 1 }
}
fn NEON_JACK_DIAMONDS() -> Card {
    Card { id: NEON_JACK_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Jack, points: 20, multi_add: 1 }
}
fn NEON_QUEEN_DIAMONDS() -> Card {
    Card { id: NEON_QUEEN_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Queen, points: 20, multi_add: 1 }
}
fn NEON_KING_DIAMONDS() -> Card {
    Card { id: NEON_KING_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::King, points: 20, multi_add: 1 }
}
fn NEON_ACE_DIAMONDS() -> Card {
    Card { id: NEON_ACE_DIAMONDS_ID, suit: Suit::Diamonds, value: Value::Ace, points: 22, multi_add: 1 }
}

fn NEON_TWO_CLUBS() -> Card {
    Card { id: NEON_TWO_CLUBS_ID, suit: Suit::Clubs, value: Value::Two, points: 4, multi_add: 1 }
}
fn NEON_THREE_CLUBS() -> Card {
    Card { id: NEON_THREE_CLUBS_ID, suit: Suit::Clubs, value: Value::Three, points: 6, multi_add: 1 }
}
fn NEON_FOUR_CLUBS() -> Card {
    Card { id: NEON_FOUR_CLUBS_ID, suit: Suit::Clubs, value: Value::Four, points: 8, multi_add: 1 }
}
fn NEON_FIVE_CLUBS() -> Card {
    Card { id: NEON_FIVE_CLUBS_ID, suit: Suit::Clubs, value: Value::Five, points: 10, multi_add: 1 }
}
fn NEON_SIX_CLUBS() -> Card {
    Card { id: NEON_SIX_CLUBS_ID, suit: Suit::Clubs, value: Value::Six, points: 12, multi_add: 1 }
}
fn NEON_SEVEN_CLUBS() -> Card {
    Card { id: NEON_SEVEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Seven, points: 14, multi_add: 1 }
}
fn NEON_EIGHT_CLUBS() -> Card {
    Card { id: NEON_EIGHT_CLUBS_ID, suit: Suit::Clubs, value: Value::Eight, points: 16, multi_add: 1 }
}
fn NEON_NINE_CLUBS() -> Card {
    Card { id: NEON_NINE_CLUBS_ID, suit: Suit::Clubs, value: Value::Nine, points: 18, multi_add: 1 }
}
fn NEON_TEN_CLUBS() -> Card {
    Card { id: NEON_TEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Ten, points: 20, multi_add: 1 }
}
fn NEON_JACK_CLUBS() -> Card {
    Card { id: NEON_JACK_CLUBS_ID, suit: Suit::Clubs, value: Value::Jack, points: 20, multi_add: 1 }
}
fn NEON_QUEEN_CLUBS() -> Card {
    Card { id: NEON_QUEEN_CLUBS_ID, suit: Suit::Clubs, value: Value::Queen, points: 20, multi_add: 1 }
}
fn NEON_KING_CLUBS() -> Card {
    Card { id: NEON_KING_CLUBS_ID, suit: Suit::Clubs, value: Value::King, points: 20, multi_add: 1 }
}
fn NEON_ACE_CLUBS() -> Card {
    Card { id: NEON_ACE_CLUBS_ID, suit: Suit::Clubs, value: Value::Ace, points: 22, multi_add: 1 }
}

fn traditional_cards_all() -> Array<u32> {
    array![
        TWO_CLUBS_ID,
        THREE_CLUBS_ID,
        FOUR_CLUBS_ID,
        FIVE_CLUBS_ID,
        SIX_CLUBS_ID,
        SEVEN_CLUBS_ID,
        EIGHT_CLUBS_ID,
        NINE_CLUBS_ID,
        TEN_CLUBS_ID,
        JACK_CLUBS_ID,
        QUEEN_CLUBS_ID,
        KING_CLUBS_ID,
        ACE_CLUBS_ID,
        TWO_DIAMONDS_ID,
        THREE_DIAMONDS_ID,
        FOUR_DIAMONDS_ID,
        FIVE_DIAMONDS_ID,
        SIX_DIAMONDS_ID,
        SEVEN_DIAMONDS_ID,
        EIGHT_DIAMONDS_ID,
        NINE_DIAMONDS_ID,
        TEN_DIAMONDS_ID,
        JACK_DIAMONDS_ID,
        QUEEN_DIAMONDS_ID,
        KING_DIAMONDS_ID,
        ACE_DIAMONDS_ID,
        TWO_HEARTS_ID,
        THREE_HEARTS_ID,
        FOUR_HEARTS_ID,
        FIVE_HEARTS_ID,
        SIX_HEARTS_ID,
        SEVEN_HEARTS_ID,
        EIGHT_HEARTS_ID,
        NINE_HEARTS_ID,
        TEN_HEARTS_ID,
        JACK_HEARTS_ID,
        QUEEN_HEARTS_ID,
        KING_HEARTS_ID,
        ACE_HEARTS_ID,
        TWO_SPADES_ID,
        THREE_SPADES_ID,
        FOUR_SPADES_ID,
        FIVE_SPADES_ID,
        SIX_SPADES_ID,
        SEVEN_SPADES_ID,
        EIGHT_SPADES_ID,
        NINE_SPADES_ID,
        TEN_SPADES_ID,
        JACK_SPADES_ID,
        QUEEN_SPADES_ID,
        KING_SPADES_ID,
        ACE_SPADES_ID,
    ]
}

fn neon_cards_all() -> Array<u32> {
    array![
        NEON_TWO_CLUBS_ID,
        NEON_THREE_CLUBS_ID,
        NEON_FOUR_CLUBS_ID,
        NEON_FIVE_CLUBS_ID,
        NEON_SIX_CLUBS_ID,
        NEON_SEVEN_CLUBS_ID,
        NEON_EIGHT_CLUBS_ID,
        NEON_NINE_CLUBS_ID,
        NEON_TEN_CLUBS_ID,
        NEON_JACK_CLUBS_ID,
        NEON_QUEEN_CLUBS_ID,
        NEON_KING_CLUBS_ID,
        NEON_ACE_CLUBS_ID,
        NEON_TWO_DIAMONDS_ID,
        NEON_THREE_DIAMONDS_ID,
        NEON_FOUR_DIAMONDS_ID,
        NEON_FIVE_DIAMONDS_ID,
        NEON_SIX_DIAMONDS_ID,
        NEON_SEVEN_DIAMONDS_ID,
        NEON_EIGHT_DIAMONDS_ID,
        NEON_NINE_DIAMONDS_ID,
        NEON_TEN_DIAMONDS_ID,
        NEON_JACK_DIAMONDS_ID,
        NEON_QUEEN_DIAMONDS_ID,
        NEON_KING_DIAMONDS_ID,
        NEON_ACE_DIAMONDS_ID,
        NEON_TWO_HEARTS_ID,
        NEON_THREE_HEARTS_ID,
        NEON_FOUR_HEARTS_ID,
        NEON_FIVE_HEARTS_ID,
        NEON_SIX_HEARTS_ID,
        NEON_SEVEN_HEARTS_ID,
        NEON_EIGHT_HEARTS_ID,
        NEON_NINE_HEARTS_ID,
        NEON_TEN_HEARTS_ID,
        NEON_JACK_HEARTS_ID,
        NEON_QUEEN_HEARTS_ID,
        NEON_KING_HEARTS_ID,
        NEON_ACE_HEARTS_ID,
        NEON_TWO_SPADES_ID,
        NEON_THREE_SPADES_ID,
        NEON_FOUR_SPADES_ID,
        NEON_FIVE_SPADES_ID,
        NEON_SIX_SPADES_ID,
        NEON_SEVEN_SPADES_ID,
        NEON_EIGHT_SPADES_ID,
        NEON_NINE_SPADES_ID,
        NEON_TEN_SPADES_ID,
        NEON_JACK_SPADES_ID,
        NEON_QUEEN_SPADES_ID,
        NEON_KING_SPADES_ID,
        NEON_ACE_SPADES_ID,
    ]
}

fn all_cards() -> Array<u32> {
    array![
        TWO_CLUBS_ID,
        THREE_CLUBS_ID,
        FOUR_CLUBS_ID,
        FIVE_CLUBS_ID,
        SIX_CLUBS_ID,
        SEVEN_CLUBS_ID,
        EIGHT_CLUBS_ID,
        NINE_CLUBS_ID,
        TEN_CLUBS_ID,
        JACK_CLUBS_ID,
        QUEEN_CLUBS_ID,
        KING_CLUBS_ID,
        ACE_CLUBS_ID,
        TWO_DIAMONDS_ID,
        THREE_DIAMONDS_ID,
        FOUR_DIAMONDS_ID,
        FIVE_DIAMONDS_ID,
        SIX_DIAMONDS_ID,
        SEVEN_DIAMONDS_ID,
        EIGHT_DIAMONDS_ID,
        NINE_DIAMONDS_ID,
        TEN_DIAMONDS_ID,
        JACK_DIAMONDS_ID,
        QUEEN_DIAMONDS_ID,
        KING_DIAMONDS_ID,
        ACE_DIAMONDS_ID,
        TWO_HEARTS_ID,
        THREE_HEARTS_ID,
        FOUR_HEARTS_ID,
        FIVE_HEARTS_ID,
        SIX_HEARTS_ID,
        SEVEN_HEARTS_ID,
        EIGHT_HEARTS_ID,
        NINE_HEARTS_ID,
        TEN_HEARTS_ID,
        JACK_HEARTS_ID,
        QUEEN_HEARTS_ID,
        KING_HEARTS_ID,
        ACE_HEARTS_ID,
        TWO_SPADES_ID,
        THREE_SPADES_ID,
        FOUR_SPADES_ID,
        FIVE_SPADES_ID,
        SIX_SPADES_ID,
        SEVEN_SPADES_ID,
        EIGHT_SPADES_ID,
        NINE_SPADES_ID,
        TEN_SPADES_ID,
        JACK_SPADES_ID,
        QUEEN_SPADES_ID,
        KING_SPADES_ID,
        ACE_SPADES_ID,
        NEON_TWO_CLUBS_ID,
        NEON_THREE_CLUBS_ID,
        NEON_FOUR_CLUBS_ID,
        NEON_FIVE_CLUBS_ID,
        NEON_SIX_CLUBS_ID,
        NEON_SEVEN_CLUBS_ID,
        NEON_EIGHT_CLUBS_ID,
        NEON_NINE_CLUBS_ID,
        NEON_TEN_CLUBS_ID,
        NEON_JACK_CLUBS_ID,
        NEON_QUEEN_CLUBS_ID,
        NEON_KING_CLUBS_ID,
        NEON_ACE_CLUBS_ID,
        NEON_TWO_DIAMONDS_ID,
        NEON_THREE_DIAMONDS_ID,
        NEON_FOUR_DIAMONDS_ID,
        NEON_FIVE_DIAMONDS_ID,
        NEON_SIX_DIAMONDS_ID,
        NEON_SEVEN_DIAMONDS_ID,
        NEON_EIGHT_DIAMONDS_ID,
        NEON_NINE_DIAMONDS_ID,
        NEON_TEN_DIAMONDS_ID,
        NEON_JACK_DIAMONDS_ID,
        NEON_QUEEN_DIAMONDS_ID,
        NEON_KING_DIAMONDS_ID,
        NEON_ACE_DIAMONDS_ID,
        NEON_TWO_HEARTS_ID,
        NEON_THREE_HEARTS_ID,
        NEON_FOUR_HEARTS_ID,
        NEON_FIVE_HEARTS_ID,
        NEON_SIX_HEARTS_ID,
        NEON_SEVEN_HEARTS_ID,
        NEON_EIGHT_HEARTS_ID,
        NEON_NINE_HEARTS_ID,
        NEON_TEN_HEARTS_ID,
        NEON_JACK_HEARTS_ID,
        NEON_QUEEN_HEARTS_ID,
        NEON_KING_HEARTS_ID,
        NEON_ACE_HEARTS_ID,
        NEON_TWO_SPADES_ID,
        NEON_THREE_SPADES_ID,
        NEON_FOUR_SPADES_ID,
        NEON_FIVE_SPADES_ID,
        NEON_SIX_SPADES_ID,
        NEON_SEVEN_SPADES_ID,
        NEON_EIGHT_SPADES_ID,
        NEON_NINE_SPADES_ID,
        NEON_TEN_SPADES_ID,
        NEON_JACK_SPADES_ID,
        NEON_QUEEN_SPADES_ID,
        NEON_KING_SPADES_ID,
        NEON_ACE_SPADES_ID,
    ]
}

fn neon_hearts_cards() -> Array<u32> {
    array![
        NEON_TWO_HEARTS_ID,
        NEON_THREE_HEARTS_ID,
        NEON_FOUR_HEARTS_ID,
        NEON_FIVE_HEARTS_ID,
        NEON_SIX_HEARTS_ID,
        NEON_SEVEN_HEARTS_ID,
        NEON_EIGHT_HEARTS_ID,
        NEON_NINE_HEARTS_ID,
        NEON_TEN_HEARTS_ID,
        NEON_JACK_HEARTS_ID,
        NEON_QUEEN_HEARTS_ID,
        NEON_KING_HEARTS_ID,
        NEON_ACE_HEARTS_ID,
    ]
}

fn all_hearts_cards() -> Array<u32> {
    array![
        TWO_HEARTS_ID,
        THREE_HEARTS_ID,
        FOUR_HEARTS_ID,
        FIVE_HEARTS_ID,
        SIX_HEARTS_ID,
        SEVEN_HEARTS_ID,
        EIGHT_HEARTS_ID,
        NINE_HEARTS_ID,
        TEN_HEARTS_ID,
        JACK_HEARTS_ID,
        QUEEN_HEARTS_ID,
        KING_HEARTS_ID,
        ACE_HEARTS_ID,
        NEON_TWO_HEARTS_ID,
        NEON_THREE_HEARTS_ID,
        NEON_FOUR_HEARTS_ID,
        NEON_FIVE_HEARTS_ID,
        NEON_SIX_HEARTS_ID,
        NEON_SEVEN_HEARTS_ID,
        NEON_EIGHT_HEARTS_ID,
        NEON_NINE_HEARTS_ID,
        NEON_TEN_HEARTS_ID,
        NEON_JACK_HEARTS_ID,
        NEON_QUEEN_HEARTS_ID,
        NEON_KING_HEARTS_ID,
        NEON_ACE_HEARTS_ID,
    ]
}
