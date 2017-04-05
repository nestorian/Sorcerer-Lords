// Stats for the Plasma Coil Gun (PCG)
Owner = noone;

FireOrderTransfer = false;

ProjectileSpeed = 900 / game_get_speed(gamespeed_fps);
ROFInSeconds = 0.2;
Spread = 1;
SecondsSinceLastShot = 0; // Timer for the fire rate

// The offset from the center of the ship for the projectiles to be created
ProjectileOffsetX = 36;
ProjectileOffsetY = 36;

RotationDirection = choose(5, -5);
FallOff = 1;