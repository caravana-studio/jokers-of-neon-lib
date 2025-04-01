use starknet::ContractAddress;

#[derive(Copy, Drop, Serde)]
#[dojo::event]
pub struct CardActivateEvent {
    #[key]
    pub player: ContractAddress,
    pub game_id: u64,
    pub special_id: u32,
}
