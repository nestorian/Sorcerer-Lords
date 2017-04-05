// Make sure the ship's sprite is always facing the correct way
image_angle = direction;

// Check if we are colliding with another ship
CheckForShipCollision();

// Check if we are being borded
CheckForBoarding();

if (Owner == noone && speed > 0) {
	friction = 0.05;
}
else {
	friction = 0;
}