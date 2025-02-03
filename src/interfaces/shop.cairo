use jokers_of_neon_lib::models::status::shop::shop::DiscountSection;

#[starknet::interface]
trait ISpecialShopType<T> {
    fn apply(ref self: T) -> Array<(DiscountSection, u32)>;
}

