#[starknet::interface]
trait IConfigurator<T> {
    fn specials_shop_info(self: @T) -> (Span<Span<u32>>, Span<u32>, Span<u32>);
}
