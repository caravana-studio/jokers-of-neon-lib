use jokers_of_neon_lib::models::data::map::NodeType;

#[derive(Copy, Drop, Serde)]
pub struct LevelMapConfig {
    /// Range defining the minimum and maximum number of children per node.
    pub children_range_per_node: (u32, u32),

    /// Probability (1-100) that a node will generate children.
    pub children_probability: u32,
    
    /// Maximum number of nodes a stage can have.
    pub max_nodes_per_stage: u32,

    /// Number of nodes in the first level of the map.
    pub initial_stages: u32,

    /// Number of additional nodes added to the map per level.
    pub map_stages_increment_per_level: u32,

    /// Probabilities for different node types appearing in the map.  
    /// Each tuple represents a node type and its probability (e.g., 40% `Round`, 40% `Store`, 20% `Rage`).
    pub stage_probabilities: Span<(NodeType, u32)>,

    /// Probability (1-100) that a `Store` node will appear after another node.
    pub store_probability_after_node: u32,
}
