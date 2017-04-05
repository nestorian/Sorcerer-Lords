// Run the step event of the parent
event_inherited();

// Activate the engine and trails particle systems, if we have an owner and some speed
if (instance_exists(Owner)) {
	if (Owner.speed > 0) {
		// EngineFX
		// Calculate an offset from the center of the ship
		var Xpos = x + lengthdir_x(-26, image_angle);
		var Ypos = y + lengthdir_y(-26, image_angle);    
		// Give the particles a direction and speed and create them (direction is actually
		// the "wrong way" for the effect to look good when the ship is moving).
		part_type_direction(global.EngineParticle, direction - 2, direction + 2, 0, 0.2);
		part_type_speed(global.EngineParticle, 2, 4, -0.01, 0.1);
		part_particles_create(global.EngineParticleFX, Xpos, Ypos, global.EngineParticle, 100);
		
		// TrailsFX
		//part_type_direction(global.TrailParticle, direction, direction, 0, 0.1);
		//part_type_speed(global.TrailParticle, 0.5, 1, -0.01, 0.1);
		//part_particles_create(global.TrailParticleFX, Xpos, Ypos, global.TrailParticle, 50);
		
	}
}

// Check if we are dead
// First check if we have an owner
if (Owner == noone) {
	// If that is not the case check our own hit points
	if (HitPoints <= 0)
		ShipExplodes();
}
else {
	// Otherwise check the owners hit points
	if (Owner.HitPoints <= 0) {
		ExitShip(Owner); // If the ship is destroyed the suit exits the ship
		ShipExplodes();
	}
}