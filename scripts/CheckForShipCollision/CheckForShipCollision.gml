/// @description Checks if another ship is colliding with us

TouchingShip = instance_place(x, y, obShip);

if (instance_exists(TouchingShip)) {
	// Check where we should deduct the hit points
	if (instance_exists(Owner))
		Owner.HitPoints -= TouchingShip.Damage;
	else
		HitPoints -= TouchingShip.Damage;
	
	ScreenShake(30);
	// Play collision sound here!
}