use starknet::ContractAddress;

trait Enumerable<T> {
    fn all() -> Span<T>;
}

#[derive(Copy, Drop, Introspect, Serde)]
struct Card {
    id: u32,
    suit: Suit,
    value: Value,
    points: u32,
    multi_add: u32,
}

// impl PackPackable of StorePacking<PackableBeast, felt252> {
//     fn pack(value: PackableBeast) -> felt252 {
//         (value.id.into()
//             + value.prefix.into() * pow::TWO_POW_7
//             + value.suffix.into() * pow::TWO_POW_14
//             + value.level.into() * pow::TWO_POW_19
//             + value.health.into() * pow::TWO_POW_35)
//             .try_into()
//             .expect('pack beast')
//     }
//     fn unpack(value: felt252) -> PackableBeast {
//         let packed = value.into();
//         let (packed, id) = integer::U256DivRem::div_rem(
//             packed, pow::TWO_POW_7.try_into().expect('0 bits')
//         );
//         let (packed, prefix) = integer::U256DivRem::div_rem(
//             packed, pow::TWO_POW_7.try_into().expect('0 bits')
//         );
//         let (packed, suffix) = integer::U256DivRem::div_rem(
//             packed, pow::TWO_POW_5.try_into().expect('0 bits')
//         );
//         let (packed, level) = integer::U256DivRem::div_rem(
//             packed, pow::TWO_POW_16.try_into().expect('0 bits')
//         );
//         let (_, health) = integer::U256DivRem::div_rem(
//             packed, pow::TWO_POW_16.try_into().expect('0 bits')
//         );
//         PackableBeast {
//             id: id.try_into().expect('unpack id'),
//             prefix: prefix.try_into().expect('unpack prefix'),
//             suffix: suffix.try_into().expect('unpack suffix'),
//             level: level.try_into().expect('unpack level'),
//             health: health.try_into().expect('unpack health'),
//         }
//     }
// }

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

#[derive(Serde, Copy, Drop, Introspect, PartialEq)]
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

impl U8IntoSuit of Into<u8, Suit> {
    fn into(self: u8) -> Suit {
        if self == 0 {
            Suit::None
        } else if self == 1 {
            Suit::Clubs
        } else if self == 2 {
            Suit::Diamonds
        } else if self == 3 {
            Suit::Hearts
        } else if self == 4 {
            Suit::Spades
        } else if self == 5 {
            Suit::Joker
        } else if self == 6 {
            Suit::Wild
        } else {
            panic!("cannot parse u8 to suit")
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

#[derive(Serde, Copy, Drop, Introspect, PartialEq)]
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

const TWO_POW_32: u256 = 0x100000000; // 2^32
const TWO_POW_40: u256 = 0x10000000000; // 2^40
const TWO_POW_48: u256 = 0x1000000000000; // 2^48
const TWO_POW_80: u256 = 0x100000000000000000000; // 2^80

impl CardIntoFelt252 of Into<Card, felt252> {
    fn into(self: Card) -> felt252 {
        let value_u8: u8 = self.value.into();
        let suit_u8: u8 = self.suit.into();

        (self.id.into()
            + suit_u8.into() * TWO_POW_32
            + value_u8.into() * TWO_POW_40
            + self.points.into() * TWO_POW_48
            + self.multi_add.into() * TWO_POW_80)
            .try_into()
            .unwrap()
    }
}

const TWO_POW_8: u256 = 0x100; // 2^8
impl Felt252IntoCard of Into<felt252, Card> {
    fn into(self: felt252) -> Card {
        let packed = self.into();
        let (packed, id) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));
        let (packed, suit) = integer::U256DivRem::div_rem(packed, TWO_POW_8.try_into().expect('0 bits'));
        let (packed, value) = integer::U256DivRem::div_rem(packed, TWO_POW_8.try_into().expect('0 bits'));
        let (packed, points) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));
        let (_, multi) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));

        let suit_u8: u8 = suit.try_into().unwrap();
        let value_u8: u8 = value.try_into().unwrap();

        Card {
            id: id.try_into().unwrap(),
            suit: suit_u8.into(),
            value: value_u8.into(),
            points: points.try_into().unwrap(),
            multi_add: multi.try_into().unwrap(),
        }
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

impl U8IntoValue of Into<u8, Value> {
    fn into(self: u8) -> Value {
        if self == 0 {
            Value::None
        } else if self == 1 {
            Value::Two
        } else if self == 2 {
            Value::Three
        } else if self == 3 {
            Value::Four
        } else if self == 4 {
            Value::Five
        } else if self == 5 {
            Value::Six
        } else if self == 6 {
            Value::Seven
        } else if self == 7 {
            Value::Eight
        } else if self == 8 {
            Value::Nine
        } else if self == 9 {
            Value::Ten
        } else if self == 10 {
            Value::Jack
        } else if self == 11 {
            Value::Queen
        } else if self == 12 {
            Value::King
        } else if self == 13 {
            Value::Ace
        } else if self == 14 {
            Value::Joker
        } else if self == 15 {
            Value::NeonJoker
        } else if self == 16 {
            Value::Wild
        } else {
            panic!("cannot parse u8 to card value")
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

#[cfg(test)]
mod into_tests {
    use super::{Card, Suit, Value};

    #[test]
    fn test_basic() {
        let card = Card { id: 1, suit: Suit::Hearts, value: Value::Six, points: 100, multi_add: 5 };
        let card_felt252: felt252 = card.into();
        let card_af: Card = card_felt252.into();

        assert(card.id == card_af.id, 'wrong id');
        assert(card.suit == card_af.suit, 'wrong suit');
        assert(card.value == card_af.value, 'wrong value');
        assert(card.points == card_af.points, 'wrong points');
        assert(card.multi_add == card_af.multi_add, 'wrong multi');
    }
}
