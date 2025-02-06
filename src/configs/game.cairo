use starknet::ContractAddress;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct GameConfig {
    pub plays: u32,
    pub discards: u32,
    pub specials_slots: u32,
    pub max_special_slots: u32,
    pub power_up_slots: u32,
    pub max_power_up_slots: u32,
    pub hand_len: u32,
    pub start_cash: u32,
    pub start_special_slots: u32,
}
