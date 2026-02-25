use jokers_of_neon_lib::models::status::shop::shop::{
    BlisterPackItem, BurnItem, CardItem, PokerHandItem, PowerUpItem, SlotSpecialCardsItem, SpecialCardItem,
};
use jokers_of_neon_lib::models::tracker::GameContext;

#[starknet::interface]
pub trait IShopDiscount<T> {
    /// Applies discounts to shop items based on special card effects.
    ///
    /// # Parameters
    /// - `context`: The current game context containing game state, round info, and played cards
    /// - `card_items`: Traditional and modifier card items in the shop
    /// - `special_card_items`: Special card items in the shop
    /// - `blister_pack_items`: Blister pack items in the shop
    /// - `poker_hand_items`: Poker hand upgrade items in the shop
    /// - `power_up_items`: Power up items in the shop
    /// - `slot_item`: Special card slot item in the shop
    /// - `burn_item`: Burn item in the shop
    ///
    /// # Returns
    /// A tuple containing all shop items with potentially modified costs:
    /// - `Array<CardItem>`: Card items with applied discounts
    /// - `Array<SpecialCardItem>`: Special card items with applied discounts
    /// - `Array<BlisterPackItem>`: Blister pack items with applied discounts
    /// - `Array<PokerHandItem>`: Poker hand items with applied discounts
    /// - `Array<PowerUpItem>`: Power up items with applied discounts
    /// - `SlotSpecialCardsItem`: Slot item with applied discount
    /// - `BurnItem`: Burn item with applied discount
    fn apply_discount(
        ref self: T,
        context: GameContext,
        card_items: Span<CardItem>,
        special_card_items: Span<SpecialCardItem>,
        blister_pack_items: Span<BlisterPackItem>,
        poker_hand_items: Span<PokerHandItem>,
        power_up_items: Span<PowerUpItem>,
        slot_item: SlotSpecialCardsItem,
        burn_item: BurnItem,
    ) -> (
        Array<CardItem>,
        Array<SpecialCardItem>,
        Array<BlisterPackItem>,
        Array<PokerHandItem>,
        Array<PowerUpItem>,
        SlotSpecialCardsItem,
        BurnItem,
    );
}
