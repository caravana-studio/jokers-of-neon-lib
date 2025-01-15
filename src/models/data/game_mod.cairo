use starknet::ContractAddress;

#[derive(Copy, Drop, IntrospectPacked, Serde)]
#[dojo::model]
pub struct GameMod {
    #[key]
    pub id: u32,
    pub name: felt252,
    pub owner: ContractAddress,
    pub card_info_address: ContractAddress,
    pub specials_info_address: ContractAddress,
    pub rages_info_address: ContractAddress,
    pub loot_boxes_info_address: ContractAddress,
    pub total_games: u32,
}
