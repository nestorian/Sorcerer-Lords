// Run the step event of the parent
event_inherited();

// Search for a possible target (this should later be moved to AI!)
MyTarget = collision_circle(x, y, 500, obEntity, false, true);

// If we find a target, fly towards it
if (instance_exists(MyTarget) && MyTarget != Vehicle) {
	Turn(id, point_direction(x, y, MyTarget.x, MyTarget.y));
	Accelerate(id);
	// If the target is within 300px, fire our gun
	if (CheckRangeAndArc(MyTarget, 300, 180))
		FireOrder = true;
	else
		FireOrder = false;
}
// Otherwise we slow down
else {
	Decelerate(id);
}


// Check if we are dead (but only if we are not in a vehicle)
if (Vehicle == noone) {
	if (HitPoints <= 0) {
		// Create a new pirate to replace the first (TEMPORARY)
		PirateSpawnX = random(room_width / 5);
		PirateSpawnY = random(room_height / 5);
		instance_create_layer(PirateSpawnX, PirateSpawnY, "Instances", obScimitar);
		instance_create_layer(PirateSpawnX, PirateSpawnY, "Instances", obPlasmaCoilGun);
		instance_create_layer(PirateSpawnX, PirateSpawnY, "Instances", obPirate);
	
		// Finally we destroy the suit
		instance_destroy();
		// This should be replaced with a suit explodes script!
		// SuitExplodes();
	}
}