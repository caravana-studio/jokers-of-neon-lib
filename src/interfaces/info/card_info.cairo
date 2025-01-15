use jokers_of_neon_lib::models::data::card::Card;

#[starknet::interface]
trait ICardInfo<T> {
    fn get_initial_deck(self: @T) -> Array<Card>;
}