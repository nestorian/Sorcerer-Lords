// Run the create event of the parent
event_inherited();

// The basic stats of the suit are described here

Owner = noone; // Just a default setting, a suit never has an owner

Vehicle = noone; // Initially the suit has no vehicle

FireOrder = false; // Should we fire?

SuitMaxSpeed =  35 / game_get_speed(gamespeed_fps);
SuitAcceleration = 2 / game_get_speed(gamespeed_fps);
SuitTurnRate = 1 / game_get_speed(gamespeed_fps);

SuitArmour = 0;
SuitMaxHitPoints = 15; // The number of hit points an undamaged suit has
SuitHitPoints = SuitMaxHitPoints; // When these reach zero the suit is destroyed
SuitDamage = 0.1; // Damage delivered by the suit itself

// These variables contain the "active" values (often from a vehicle we are sitting in)
MaxSpeed = SuitMaxSpeed;
Acceleration = SuitAcceleration;
TurnRate = SuitTurnRate;

Armour = SuitArmour;
MaxHitPoints = SuitMaxHitPoints;
HitPoints = SuitHitPoints;
Damage = SuitDamage;