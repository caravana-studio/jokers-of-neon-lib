#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct LevelMapConfig {
    pub childs_len_per_node: (u32, u32),
    pub child_probability: u32,
    pub map_len: (u32, u32),
    pub map_len_increment_per_level: u32,
}

// 0 -> (1, 3)