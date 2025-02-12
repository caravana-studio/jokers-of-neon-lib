use jokers_of_neon_lib::models::rage_type::RageType;

#[starknet::interface]
trait IRageBase<T> {
    fn get_id(self: @T) -> u32;
    fn get_type(self: @T) -> RageType;
}
