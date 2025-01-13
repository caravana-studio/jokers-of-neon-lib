use jokers_of_neon_lib::models::discount_section::DiscountSection;
use jokers_of_neon_lib::models::special_type::SpecialType;

#[starknet::interface]
trait ISpecialShopType<T> {
    fn apply(ref self: T) -> Array<(DiscountSection, u32)>;
    fn get_id(self: @T) -> u32;
    fn get_type(self: @T) -> SpecialType;
}

