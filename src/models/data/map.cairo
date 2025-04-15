// [ Node models ]

// With subtype attribute we want to represent the id of the node kind
// i.e:
// Node type: Store -> Subtype: Deck
// Node type: Rage -> Subtype: Category?
// Node type: Reward -> Subtype: Any reward type (for the future)
#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct Node {
    #[key]
    id: u32,
    node_type: NodeType,
    data: felt252,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct NodeChilds {
    #[key]
    node_id: u32,
    childs: Span<u32>,
}

#[derive(Copy, Drop, Serde, PartialEq, IntrospectPacked)]
enum NodeType {
    None,
    Round,
    Rage,
    Reward,
    Store,
}

// [ Node data]

#[derive(Copy, Drop, Serde, PartialEq, IntrospectPacked)]
struct RageNodeData {
    rage_power: u32,
    round: u32,
}

// impl CardIntoFelt252 of Into<Card, felt252> {
//     fn into(self: Card) -> felt252 {
//         let value_u8: u8 = self.value.into();
//         let suit_u8: u8 = self.suit.into();

//         (self.id.into()
//             + suit_u8.into() * TWO_POW_32
//             + value_u8.into() * TWO_POW_40
//             + self.points.into() * TWO_POW_48
//             + self.multi_add.into() * TWO_POW_80)
//             .try_into()
//             .unwrap()
//     }
// }

// const TWO_POW_8: u256 = 0x100; // 2^8
// impl Felt252IntoCard of Into<felt252, Card> {
//     fn into(self: felt252) -> Card {
//         let packed = self.into();
//         let (packed, id) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));
//         let (packed, suit) = integer::U256DivRem::div_rem(packed, TWO_POW_8.try_into().expect('0 bits'));
//         let (packed, value) = integer::U256DivRem::div_rem(packed, TWO_POW_8.try_into().expect('0 bits'));
//         let (packed, points) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));
//         let (_, multi) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));

//         let suit_u8: u8 = suit.try_into().unwrap();
//         let value_u8: u8 = value.try_into().unwrap();

//         Card {
//             id: id.try_into().unwrap(),
//             suit: suit_u8.into(),
//             value: value_u8.into(),
//             points: points.try_into().unwrap(),
//             multi_add: multi.try_into().unwrap(),
//         }
//     }
// }

// [ Map models ]

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct LevelMap {
    #[key]
    game_id: u64,
    #[key]
    level: u32,
    stages: Span<NodeType>,
    level_nodes: Span<Span<u32>>,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct StageTracker {
    #[key]
    game_id: u64,
    store_stages: u32,
    round_stages: u32,
    rage_stages: u32,
    total_nodes: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct TraveledNodes {
    #[key]
    game_id: u64,
    #[key]
    level: u32,
    nodes: Span<u32>,
}

#[derive(Copy, Drop, Serde)]
struct ParsedLevelMap {
    level_nodes: Span<Span<(Node, NodeChilds)>>,
    traveled_nodes: Span<u32>,
}
