use starknet::ContractAddress;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
pub struct GameConfig {
    pub plays: u16,
    pub discards: u16,
    pub specials_slots: u16,
    pub max_special_slots: u16,
    pub power_up_slots: u16,
    pub max_power_up_slots: u16,
    pub current_hand_len: u16,
    pub start_cash: u16
}
