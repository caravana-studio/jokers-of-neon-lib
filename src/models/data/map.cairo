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

#[derive(Copy, Drop, Serde)]
#[dojo::model]
struct LevelMap {
    #[key]
    game_id: u32,
    #[key]
    level: u32,
    traveled_path: Span<u32>,
    stages: Span<NodeType>,
    level_nodes: Span<Span<u32>>,
}
