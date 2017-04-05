// Run the step event of the parent
event_inherited();

// Activate the engine particle system, if we have an owner and some speed
if (instance_exists(Owner)) {
	if (Owner.speed > 0) {
		// Calculate an offset from the center of the ship
		var XposLeft = x + lengthdir_x(LeftEngineOffsetX, image_angle) - lengthdir_y(LeftEngineOffsetY, image_angle);
		var YposLeft = y + lengthdir_y(LeftEngineOffsetX, image_angle) + lengthdir_x(LeftEngineOffsetY, image_angle);
		var XposRight = x + lengthdir_x(RightEngineOffsetX, image_angle) - lengthdir_y(RightEngineOffsetY, image_angle);
		var YposRight = y + lengthdir_y(RightEngineOffsetX, image_angle) + lengthdir_x(RightEngineOffsetY, image_angle);
		
		// Give the particles a direction and speed and create them (direction is actually set
		// the "wrong way" for the effect to look good when the ship is moving).
		// Also decrese their size somewhat compared to the default since the engines are small.
		part_type_direction(global.EngineParticle, direction - 2, direction + 2, 0, 0.2);
		part_type_speed(global.EngineParticle, 3, 5, -0.01, 0.1);
		part_particles_create(global.EngineParticleFX, XposLeft, YposLeft, global.EngineParticle, 100);
		part_particles_create(global.EngineParticleFX, XposRight, YposRight, global.EngineParticle, 100);
		
		// TrailsFX
		//part_type_direction(global.TrailParticle, direction, direction, 0, 0.1);
		//part_type_scale(global.TrailParticle, 5, 1);
		//part_type_speed(global.TrailParticle, 0.4, 0.5, -0.01, 0.1);
		//part_particles_create(global.TrailParticleFX, XposLeft, YposLeft, global.TrailParticle, 50);
		//part_particles_create(global.TrailParticleFX, XposRight, YposRight, global.TrailParticle, 50);
	}
}

// Check if we are dead
// First check if we have an owner
if (Owner == noone) {
	// If that is the case check our own hit points
	if (HitPoints <= 0)
		ShipExplodes();
}
else {
	// Otherwise check the owners hit points
	if (Owner.HitPoints <= 0) {
		ExitShip(Owner); // If the ship is destroyed the suit exits the ship
		// DESTROY INVENTORY HERE!
		ShipExplodes();
	}
}