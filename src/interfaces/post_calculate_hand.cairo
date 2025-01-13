use jokers_of_neon_lib::models::card::Card;
use jokers_of_neon_lib::models::play_info::PlayInfo;
use jokers_of_neon_lib::models::poker_hand::PokerHand;
use jokers_of_neon_lib::models::special_type::SpecialType;

#[starknet::interface]
trait ISpecialPostPlayType<T> {
    fn apply(ref self: T, play_info: PlayInfo) -> PlayInfo;
    fn get_id(ref self: T) -> u32;
    fn get_type(ref self: T) -> SpecialType;
}
