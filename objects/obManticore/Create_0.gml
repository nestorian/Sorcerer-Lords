// Run the create event of the parent
event_inherited();

MaxSpeed =  450 / game_get_speed(gamespeed_fps);
Acceleration = 5 / game_get_speed(gamespeed_fps);
TurnRate = 6 / game_get_speed(gamespeed_fps);

Armour = 0;
MaxHitPoints = 150; // The number of hit points an undamaged ship has
HitPoints = MaxHitPoints; // When these reach zero the ship is destroyed
Damage = 5; // Damage delivered by the ship itself

// The offsets from the center of the ship for the engine particle effects
LeftEngineOffsetX = -15;
LeftEngineOffsetY = -17;
RightEngineOffsetX = -15;
RightEngineOffsetY = 16;

// Upgrades and inventory