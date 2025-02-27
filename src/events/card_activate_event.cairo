use starknet::ContractAddress;

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct CardActivateEvent {
    #[key]
    pub player: ContractAddress,
    pub game_id: u32,
    pub mod_id: felt252,
    pub special_id: u32,
}
