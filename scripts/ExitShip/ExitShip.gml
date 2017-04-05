/// @description Handles a suit exiting a ship
/// @param EnteringSuit The suit that exits the ship

ExitingSuit = argument0;

with ExitingSuit {
	// Set the owner of ExitingSuit's vehicle to no one
	Vehicle.Owner = noone;
	// Move the suit some distance away (to avoid immediately reentering a ship)
	var ExitDirection = random(360);
	x = x + lengthdir_x(Vehicle.sprite_width + 5, ExitDirection);
	y = y + lengthdir_y(Vehicle.sprite_height + 5, ExitDirection);
	
	// Transfer the current hit points from the suit to the ship
	Vehicle.HitPoints = HitPoints;
	// Also reset all the suits own stats
	MaxSpeed = SuitMaxSpeed;
	Acceleration = SuitAcceleration;
	TurnRate = SuitTurnRate;
	Armour = SuitArmour;
	MaxHitPoints = SuitMaxHitPoints;
	HitPoints = SuitHitPoints;
	Damage = SuitDamage;
	
	// Give the vehicle the same speed as the suit has
	Vehicle.speed = speed;
	
	// Finally set the vehicle variable to noone
	Vehicle = noone;
}








