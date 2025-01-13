#[derive(Serde, Copy, Drop, Introspect, PartialEq)]
enum SpecialType {
    PreCalculateHand, // play HECHO
    PostCalculateHand, // play NO IMPORTA
    Individual, // play HECHO
    CurrentHand, // play 
    PowerUp, // play HECHO
    RoundState, // play HECHO
    Win, // play o discard 
    Lose, // play
    Discard, // discard
    Round, // cuando se crea el round
    Game, // cuando compro la especial
    Shop, // cuando compro la especial
    LevelUpPlay, // cuando compras o vendes
    PlayRules, // cuando se compra la especial
}
