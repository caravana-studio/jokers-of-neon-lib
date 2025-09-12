// [ Node models ]

// With subtype attribute we want to represent the id of the node kind
// i.e:
// Node type: Store -> Subtype: Deck
// Node type: Rage -> Subtype: Category?
// Node type: Reward -> Subtype: Any reward type (for the future)
#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct Node {
    #[key]
    pub game_id: u64,
    #[key]
    pub id: u32,
    pub node_type: NodeType,
    pub data: felt252,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct NodeChilds {
    #[key]
    pub game_id: u64,
    #[key]
    pub node_id: u32,
    pub childs: Span<u32>,
}

#[derive(Copy, Drop, Serde, PartialEq, IntrospectPacked, DojoStore, Default)]
pub enum NodeType {
    #[default]
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

impl Felt252IntoRageNodeData of Into<felt252, RageNodeData> {
    fn into(self: felt252) -> RageNodeData {
        let packed = self.into();
        let (packed, power) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));
        let (_, round) = integer::U256DivRem::div_rem(packed, TWO_POW_32.try_into().expect('0 bits'));

        RageNodeData { power: power.try_into().unwrap(), round: round.try_into().unwrap() }
    }
}

pub impl NodeTypeDisplay of core::fmt::Display<NodeType> {
    fn fmt(self: @NodeType, ref f: core::fmt::Formatter) -> Result<(), core::fmt::Error> {
        let s = match self {
            NodeType::None => "None",
            NodeType::Round => "Round",
            NodeType::Rage => "Rage",
            NodeType::Reward => "Reward",
            NodeType::Store => "Store",
        };
        f.buffer.append(@s);
        Result::Ok(())
    }
}

// [ Map models ]

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct LevelMap {
    #[key]
    pub game_id: u64,
    #[key]
    pub level: u32,
    pub stages: Span<NodeType>,
    pub level_nodes: Span<Span<u32>>,
    pub latest_level_node_id: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct StageTracker {
    #[key]
    pub game_id: u64,
    pub store_stages: u32,
    pub round_stages: u32,
    pub rage_stages: u32,
    pub total_nodes: u32,
}

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct TraveledNodes {
    #[key]
    pub game_id: u64,
    #[key]
    pub level: u32,
    pub nodes: Span<u32>,
}

#[derive(Copy, Drop, Serde)]
struct ParsedLevelMap {
    level_nodes: Span<Span<(Node, NodeChilds)>>,
    traveled_nodes: Span<u32>,
}
