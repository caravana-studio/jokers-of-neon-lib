use jokers_of_neon_lib::models::data::map::NodeType;

#[derive(Copy, Drop, Serde)]
pub struct LevelMapConfig {
    /// Number of nodes in the first level of the map.
    pub initial_stages: u32,
    /// Number of additional nodes added to the map per level.
    pub stages_increment_per_level: u32,
    /// Probabilities for different node types appearing in the map.
    /// Each tuple represents a node type and its probability (e.g., 40% `Round`, 40% `Store`, 20% `Rage`).
    pub stage_probabilities: Span<(NodeType, u32)>,
    /// Probability (1-100) that a `Store` node will appear after another node.
    pub store_probability_after_node: u32,
    /// Maximum number of nodes a stage can have.
    pub max_nodes_per_stage: u32,
    /// For each value in `max_nodes_per_stage`, a probability (1-100) determines if a node will be generated.
    pub node_probability: u32,
    /// Probability (1-100) that an edge will be created between a node and its previous one.
    pub edge_probability: u32,
    /// Minimum and maximum number of `Rage` nodes guaranteed to appear in the map.
    pub min_max_rages_per_map: (u32, u32),
}
