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
    power: u32,
    round: u32,
}

const TWO_POW_32: u256 = 0x100000000;
const TWO_POW_64: u256 = 0x10000000000000000;
impl RageNodeDataIntoFelt252 of Into<RageNodeData, felt252> {
    fn into(self: RageNodeData) -> felt252 {
        (self.power.into() + self.round.into() * TWO_POW_32).try_into().unwrap()
    }
}

// const TWO_POW_8: u256 = 0x100; // 2^8
impl Felt252IntoCard of Into<felt252, RageNodeData> {
    fn into(self: felt252) -> RageNodeData {
        let packed = self.into();
        let (packed, power) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));
        let (_, round) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));

        RageNodeData { power: power.try_into().unwrap(), round: round.try_into().unwrap() }
    }
}

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
