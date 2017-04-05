// Run the create event of the parent
event_inherited();

Owner = noone; // Initially we have no owner

MaxSpeed =  250 / game_get_speed(gamespeed_fps);
Acceleration = 3 / game_get_speed(gamespeed_fps);
TurnRate = 4 / game_get_speed(gamespeed_fps);

Armour = 5;
MaxHitPoints = 100; // The number of hit points an undamaged ship has
HitPoints = MaxHitPoints; // When these reach zero the ship is destroyed
Damage = 5; // Damage delivered by the ship itself

FireOrder = false; // Should we fire?
UseOrder = false; // Should we use something?