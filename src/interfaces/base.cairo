use jokers_of_neon_lib::models::card_type::CardType;

#[starknet::interface]
trait ICardBase<T> {
    fn get_id(self: @T) -> u32;
    fn get_types(self: @T) -> Span<CardType>;
}
