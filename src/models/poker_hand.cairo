// poker_hands
const POKER_HAND_ROYAL_FLUSH: u32 = 1;
const POKER_HAND_STRAIGHT_FLUSH: u32 = 2;
const POKER_HAND_FIVE_OF_A_KIND: u32 = 3;
const POKER_HAND_FOUR_OF_A_KIND: u32 = 4;
const POKER_HAND_FULL_HOUSE: u32 = 5;
const POKER_HAND_STRAIGHT: u32 = 6;
const POKER_HAND_FLUSH: u32 = 7;
const POKER_HAND_THREE_OF_A_KIND: u32 = 8;
const POKER_HAND_TWO_PAIR: u32 = 9;
const POKER_HAND_ONE_PAIR: u32 = 10;
const POKER_HAND_HIGH_CARD: u32 = 11;

trait Enumerable<T> {
    fn all() -> Span<T>;
}

#[derive(Serde, Copy, Drop, Introspect, PartialEq)]
enum PokerHand {
    None,
    RoyalFlush,
    StraightFlush,
    FiveOfAKind,
    FourOfAKind,
    FullHouse,
    Straight,
    Flush,
    ThreeOfAKind,
    TwoPair,
    OnePair,
    HighCard,
}

impl PokerHandImpl of Enumerable<PokerHand> {
    #[inline(always)]
    fn all() -> Span<PokerHand> {
        let mut items = array![
            PokerHand::RoyalFlush,
            PokerHand::StraightFlush,
            PokerHand::FiveOfAKind,
            PokerHand::FourOfAKind,
            PokerHand::FullHouse,
            PokerHand::Straight,
            PokerHand::Flush,
            PokerHand::ThreeOfAKind,
            PokerHand::TwoPair,
            PokerHand::OnePair,
            PokerHand::HighCard,
        ];
        items.span()
    }
}

#[derive(Copy, Drop, Serde, starknet::Event)]
struct LevelPokerHand {
    #[key]
    poker_hand: PokerHand,
    #[key]
    level: u8,
    multi: u32,
    points: u32
}

impl PokerHandIntoFelt252 of Into<PokerHand, felt252> {
    fn into(self: PokerHand) -> felt252 {
        match self {
            PokerHand::None => Zeroable::zero(),
            PokerHand::RoyalFlush => POKER_HAND_ROYAL_FLUSH.into(),
            PokerHand::StraightFlush => POKER_HAND_STRAIGHT_FLUSH.into(),
            PokerHand::FiveOfAKind => POKER_HAND_FIVE_OF_A_KIND.into(),
            PokerHand::FourOfAKind => POKER_HAND_FOUR_OF_A_KIND.into(),
            PokerHand::FullHouse => POKER_HAND_FULL_HOUSE.into(),
            PokerHand::Straight => POKER_HAND_STRAIGHT.into(),
            PokerHand::Flush => POKER_HAND_FLUSH.into(),
            PokerHand::ThreeOfAKind => POKER_HAND_THREE_OF_A_KIND.into(),
            PokerHand::TwoPair => POKER_HAND_TWO_PAIR.into(),
            PokerHand::OnePair => POKER_HAND_ONE_PAIR.into(),
            PokerHand::HighCard => POKER_HAND_HIGH_CARD.into(),
        }
    }
}

impl PokerHandIntou8 of Into<PokerHand, u8> {
    fn into(self: PokerHand) -> u8 {
        match self {
            PokerHand::None => Zeroable::zero(),
            PokerHand::RoyalFlush => POKER_HAND_ROYAL_FLUSH.try_into().unwrap(),
            PokerHand::StraightFlush => POKER_HAND_STRAIGHT_FLUSH.try_into().unwrap(),
            PokerHand::FiveOfAKind => POKER_HAND_FIVE_OF_A_KIND.try_into().unwrap(),
            PokerHand::FourOfAKind => POKER_HAND_FOUR_OF_A_KIND.try_into().unwrap(),
            PokerHand::FullHouse => POKER_HAND_FULL_HOUSE.try_into().unwrap(),
            PokerHand::Straight => POKER_HAND_STRAIGHT.try_into().unwrap(),
            PokerHand::Flush => POKER_HAND_FLUSH.try_into().unwrap(),
            PokerHand::ThreeOfAKind => POKER_HAND_THREE_OF_A_KIND.try_into().unwrap(),
            PokerHand::TwoPair => POKER_HAND_TWO_PAIR.try_into().unwrap(),
            PokerHand::OnePair => POKER_HAND_ONE_PAIR.try_into().unwrap(),
            PokerHand::HighCard => POKER_HAND_HIGH_CARD.try_into().unwrap(),
        }
    }
}

impl PokerHandIntou32 of Into<PokerHand, u32> {
    fn into(self: PokerHand) -> u32 {
        match self {
            PokerHand::None => Zeroable::zero(),
            PokerHand::RoyalFlush => POKER_HAND_ROYAL_FLUSH,
            PokerHand::StraightFlush => POKER_HAND_STRAIGHT_FLUSH,
            PokerHand::FiveOfAKind => POKER_HAND_FIVE_OF_A_KIND,
            PokerHand::FourOfAKind => POKER_HAND_FOUR_OF_A_KIND,
            PokerHand::FullHouse => POKER_HAND_FULL_HOUSE,
            PokerHand::Straight => POKER_HAND_STRAIGHT,
            PokerHand::Flush => POKER_HAND_FLUSH,
            PokerHand::ThreeOfAKind => POKER_HAND_THREE_OF_A_KIND,
            PokerHand::TwoPair => POKER_HAND_TWO_PAIR,
            PokerHand::OnePair => POKER_HAND_ONE_PAIR,
            PokerHand::HighCard => POKER_HAND_HIGH_CARD,
        }
    }
}

impl PokerHandTryIntoU32 of TryInto<u32, PokerHand> {
    #[inline(always)]
    fn try_into(self: u32) -> Option<PokerHand> {
        if self == Zeroable::zero() {
            Option::Some(PokerHand::None)
        } else if self == POKER_HAND_ROYAL_FLUSH {
            Option::Some(PokerHand::RoyalFlush)
        } else if self == POKER_HAND_STRAIGHT_FLUSH {
            Option::Some(PokerHand::StraightFlush)
        } else if self == POKER_HAND_FOUR_OF_A_KIND {
            Option::Some(PokerHand::FourOfAKind)
        } else if self == POKER_HAND_FULL_HOUSE {
            Option::Some(PokerHand::FullHouse)
        } else if self == POKER_HAND_STRAIGHT {
            Option::Some(PokerHand::Straight)
        } else if self == POKER_HAND_FLUSH {
            Option::Some(PokerHand::Flush)
        } else if self == POKER_HAND_THREE_OF_A_KIND {
            Option::Some(PokerHand::ThreeOfAKind)
        } else if self == POKER_HAND_TWO_PAIR {
            Option::Some(PokerHand::TwoPair)
        } else if self == POKER_HAND_ONE_PAIR {
            Option::Some(PokerHand::OnePair)
        } else if self == POKER_HAND_HIGH_CARD {
            Option::Some(PokerHand::HighCard)
        } else if self == POKER_HAND_FIVE_OF_A_KIND {
            Option::Some(PokerHand::FiveOfAKind)
        } else {
            Option::None(())
        }
    }
}
