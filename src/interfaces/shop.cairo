use jokers_of_neon_lib::models::special_type::SpecialType;
use jokers_of_neon_lib::models::status::shop::shop::DiscountSection;

#[starknet::interface]
trait ISpecialShopType<T> {
    fn apply(ref self: T) -> Array<(DiscountSection, u32)>;
    fn get_id(self: @T) -> u32;
    fn get_type(self: @T) -> SpecialType;
}

