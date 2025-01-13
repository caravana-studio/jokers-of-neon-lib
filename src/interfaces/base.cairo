use jokers_of_neon_lib::models::special_type::SpecialType;

#[starknet::interface]
trait ISpecialBase<T> {
    fn get_id(ref self: T) -> u32;
    fn get_type(ref self: T) -> SpecialType;
}
