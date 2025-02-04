use starknet::ContractAddress;

trait Enumerable<T> {
    fn all() -> Span<T>;
}

#[derive(Copy, Drop, IntrospectPacked, Serde)]
struct Card {
    id: u32,
    suit: Suit,
    value: Value,
    points: u32,
    multi_add: u32,
}

trait CardTrait {
    fn new(value: Value, suit: Suit, points: u32) -> Card;
    fn generate_id(value: Value, suit: Suit) -> u32;
    fn generate_neon_id(card_id: u32) -> u32;
}

impl CardImpl of CardTrait {
    fn new(value: Value, suit: Suit, points: u32) -> Card {
        let suit_u8: u8 = suit.into();
        let value_u8: u8 = value.into();
        Card { id: ((13 * (suit_u8 - 1)) + (value_u8 - 1)).into(), suit, value, points, multi_add: 0 }
    }

    fn generate_id(value: Value, suit: Suit) -> u32 {
        let suit_u8: u8 = suit.into();
        let value_u8: u8 = value.into();
        ((13 * (suit_u8 - 1)) + (value_u8 - 1)).into()
    }

    fn generate_neon_id(card_id: u32) -> u32 {
        200 + card_id
    }
}

#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq)]
enum Suit {
    None,
    Clubs, // Tréboles
    Diamonds, // Diamantes
    Hearts, // Corazones
    Spades, // Espadas
    Joker,
    Wild,
}

impl SuitEnumerableImpl of Enumerable<Suit> {
    #[inline(always)]
    fn all() -> Span<Suit> {
        let mut items = array![Suit::Clubs, Suit::Diamonds, Suit::Hearts, Suit::Spades];
        items.span()
    }
}

impl SuitIntou8 of Into<Suit, u8> {
    fn into(self: Suit) -> u8 {
        match self {
            Suit::None => 0,
            Suit::Clubs => 1,
            Suit::Diamonds => 2,
            Suit::Hearts => 3,
            Suit::Spades => 4,
            Suit::Joker => 5,
            Suit::Wild => 6,
        }
    }
}

impl SuitIntoFelt252 of Into<Suit, felt252> {
    fn into(self: Suit) -> felt252 {
        match self {
            Suit::None => 0,
            Suit::Clubs => 1,
            Suit::Diamonds => 2,
            Suit::Hearts => 3,
            Suit::Spades => 4,
            Suit::Joker => 5,
            Suit::Wild => 6,
        }
    }
}

#[derive(Serde, Copy, Drop, IntrospectPacked, PartialEq)]
enum Value {
    None,
    Two,
    Three,
    Four,
    Five,
    Six,
    Seven,
    Eight,
    Nine,
    Ten,
    Jack,
    Queen,
    King,
    Ace,
    Joker,
    NeonJoker,
    Wild,
}

impl ValueEnumerableImpl of Enumerable<Value> {
    #[inline(always)]
    fn all() -> Span<Value> {
        let mut items = array![
            Value::Two,
            Value::Three,
            Value::Four,
            Value::Five,
            Value::Six,
            Value::Seven,
            Value::Eight,
            Value::Nine,
            Value::Ten,
            Value::Jack,
            Value::Queen,
            Value::King,
            Value::Ace,
        ];
        items.span()
    }
}


impl ValueIntoFelt252 of Into<Value, felt252> {
    fn into(self: Value) -> felt252 {
        match self {
            Value::None => 0,
            Value::Two => 1,
            Value::Three => 2,
            Value::Four => 3,
            Value::Five => 4,
            Value::Six => 5,
            Value::Seven => 6,
            Value::Eight => 7,
            Value::Nine => 8,
            Value::Ten => 9,
            Value::Jack => 10,
            Value::Queen => 11,
            Value::King => 12,
            Value::Ace => 13,
            Value::Joker => 14,
            Value::NeonJoker => 15,
            Value::Wild => 16,
        }
    }
}

// TODO: Implement
impl CardIntoFelt252 of Into<Card, felt252> {
    fn into(self: Card) -> felt252 {
        1
    }
}
// TODO: Implement
impl Felt252IntoCard of Into<felt252, Card> {
    fn into(self: felt252) -> Card {
        Card { id: 0, suit: Suit::None, value: Value::None, points: 0, multi_add: 0 }
    }
}

impl ValueIntou8 of Into<Value, u8> {
    fn into(self: Value) -> u8 {
        match self {
            Value::None => 0,
            Value::Two => 1,
            Value::Three => 2,
            Value::Four => 3,
            Value::Five => 4,
            Value::Six => 5,
            Value::Seven => 6,
            Value::Eight => 7,
            Value::Nine => 8,
            Value::Ten => 9,
            Value::Jack => 10,
            Value::Queen => 11,
            Value::King => 12,
            Value::Ace => 13,
            Value::Joker => 14,
            Value::NeonJoker => 15,
            Value::Wild => 16,
        }
    }
}

impl PartialOrdFelt of PartialOrd<Card> {
    #[inline(always)]
    fn le(lhs: Card, rhs: Card) -> bool {
        let lhs_value: u8 = lhs.value.into();
        let rhs_value: u8 = rhs.value.into();
        !(rhs_value < lhs_value)
    }
    #[inline(always)]
    fn ge(lhs: Card, rhs: Card) -> bool {
        let lhs_value: u8 = lhs.value.into();
        let rhs_value: u8 = rhs.value.into();
        !(lhs_value < rhs_value)
    }
    #[inline(always)]
    fn lt(lhs: Card, rhs: Card) -> bool {
        let lhs_value: u8 = lhs.value.into();
        let rhs_value: u8 = rhs.value.into();
        lhs_value < rhs_value
    }
    #[inline(always)]
    fn gt(lhs: Card, rhs: Card) -> bool {
        let lhs_value: u8 = lhs.value.into();
        let rhs_value: u8 = rhs.value.into();
        rhs_value < lhs_value
    }
}


#[derive(Drop)]
struct SilentCards {
    suits: Array<Suit>,
    values: Array<Value>,
}

#[generate_trait]
impl SilentCardsImpl of SilentCardsTrait {
    fn card_is_silenced(self: @SilentCards, card: Card) -> bool {
        contains_suit(self.suits, card.suit) || contains_value(self.values, card.value)
    }
}

fn contains_value(values: @Array<Value>, value: Value) -> bool {
    let mut idx = 0;
    loop {
        if values.len() == idx {
            break false;
        }

        if *values[idx] == value {
            break true;
        }

        idx += 1;
    }
}

fn contains_suit(suits: @Array<Suit>, suit: Suit) -> bool {
    let mut idx = 0;
    loop {
        if suits.len() == idx {
            break false;
        }

        if *suits[idx] == suit {
            break true;
        }

        idx += 1;
    }
}
