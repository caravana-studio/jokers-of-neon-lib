use starknet::ContractAddress;

#[starknet::interface]
trait IRegistrator<T> {
    fn register_game_mod(ref self: T, mod_name: felt252, configurator_system_address: ContractAddress) -> u32;
    fn register_special(ref self: T, mod_id: u32, special_id: u32, contract_address: ContractAddress);
    fn register_specials(ref self: T, mod_id: u32, special_ids: Span<u32>, contract_addresses: Span<ContractAddress>);
}
