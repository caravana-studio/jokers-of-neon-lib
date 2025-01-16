#[derive(Serde, Copy, Drop, Introspect, PartialEq)]
enum SpecialType {
    PreCalculateHand,
    PostCalculateHand,
    Individual,
    CurrentHand,
    PowerUp,
    RoundState,
    Win,
    Lose,
    Discard,
    Round,
    Game,
    Shop,
    LevelUpPlay,
    PlayRules,
}
