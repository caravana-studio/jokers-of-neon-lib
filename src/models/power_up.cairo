#[derive(Copy, Drop, Serde)]
pub struct PowerUp {
    pub id: u32,
    pub points: u32,
    pub multi: u32
}
