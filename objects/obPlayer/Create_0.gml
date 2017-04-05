// Run the create event of the parent
event_inherited();

// The basic stats of the player are described here

Owner = noone; // Just a default setting, a suit never has an owner

Vehicle = noone; // Initially the player has no vehicle

FireOrder = false; // Should we fire?

SuitMaxSpeed =  40 / game_get_speed(gamespeed_fps);
SuitAcceleration = 2 / game_get_speed(gamespeed_fps);
SuitTurnRate = 1 / game_get_speed(gamespeed_fps);

SuitArmour = 0;
SuitMaxHitPoints = 15; // The number of hit points an undamaged player has
SuitHitPoints = SuitMaxHitPoints; // When these reach zero the player is destroyed
SuitDamage = 0.1; // Damage delivered by the player itself

// These variables contain the "active" values (often from a vehicle we are sitting in)
MaxSpeed = SuitMaxSpeed;
Acceleration = SuitAcceleration;
TurnRate = SuitTurnRate;

Armour = SuitArmour;
MaxHitPoints = SuitMaxHitPoints;
HitPoints = SuitHitPoints;
Damage = SuitDamage;


// Set the main camera to follow the player (that will always stay in the middle of the screen)
camera_set_view_target(view_camera[0], obPlayer);
camera_set_view_border(view_camera[0], view_get_wport(0) / 2, view_get_hport(0) / 2);


//// Test with a particle effect for the ship engines
//// Create the particle system
//EngineParticleFX = part_system_create_layer("Instances", false);

//// Create the particle
//EngineParticle = part_type_create();
//part_type_shape(EngineParticle, pt_shape_smoke);
//part_type_orientation(EngineParticle, 0, 0, 0, 0.1, false);
//part_type_size(EngineParticle, 0.1, 0.2, 0.001, 0);
//part_type_speed(EngineParticle, 0.1, 0.3, 0.01, 0);
//part_type_direction(EngineParticle, 0, 0, 0, 1);
//part_type_life(EngineParticle, 100, 200);
//part_type_alpha2(EngineParticle, 1, 0);
//part_type_blend(EngineParticle, true);