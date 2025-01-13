use starknet::ContractAddress;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct GameMod {
    #[key]
    pub id: u32,
    pub name: felt252,
    pub owner: ContractAddress,
}
