use starknet::ContractAddress;

#[starknet::interface]
trait IRegistrator<T> {
    fn register_game_mod(
        ref self: T,
        mod_name: felt252,
        loot_boxes_info_system_address: ContractAddress,
        specials_info_system_address: ContractAddress
    ) -> u32;
    fn register_special(ref self: T, mod_id: u32, special_id: u32, contract_address: ContractAddress);
    fn register_specials(ref self: T, mod_id: u32, special_ids: Span<u32>, contract_addresses: Span<ContractAddress>);
    fn register_rage(ref self: T, mod_id: u32, rage_id: u32, contract_address: ContractAddress);
    fn register_rages(ref self: T, mod_id: u32, rage_ids: Span<u32>, contract_addresses: Span<ContractAddress>);
}
