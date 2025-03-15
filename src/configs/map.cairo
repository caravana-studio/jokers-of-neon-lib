#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct LevelMapConfig {
    /// Minimum and maximum number of children per node.
    pub children_range_per_node: (u32, u32),
    /// Probability of a node having children (1-100)
    pub children_probability: u32,
    /// Initial map length (number of nodes in the first level).
    pub initial_stages_length: u32,
    /// Increment in map length per additional level.
    pub map_stages_increment_per_level: u32,
}