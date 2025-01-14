const MOD_TRACKER_ID: felt252 = 'MODTRACKER';

#[derive(Copy, Drop, Serde)]
#[dojo::model]
pub struct ModTracker {
    #[key]
    pub id: felt252,
    pub total_mods: u32,
}
