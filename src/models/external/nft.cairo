use starknet::ContractAddress;

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct CardStats {
    #[key]
    pub token_id: u256,
    pub marketable: bool,
    pub card_id: u32,
    pub rarity: u32,
    pub count: u32,
    pub owner: ContractAddress,
    pub skin_id: u32,
    pub skin_rarity: u32,
    pub quality: u32,
}
