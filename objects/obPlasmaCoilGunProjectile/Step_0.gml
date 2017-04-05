// Check if we hit an entity (a suit or a ship)
EntityHit = instance_place(x, y, obEntity);

if (instance_exists(EntityHit)) {
	if (instance_exists(EntityHit.Owner)) {
		with (EntityHit) {
			// If the entity has an owner, deal damage directly to it
			Owner.HitPoints -= obPlasmaCoilGunProjectile.Damage;
		}
	}
	else {
	// Otherwise deal the damage directly to the entity
		EntityHit.HitPoints -= Damage;
	}
	
	// Create an impact particle effect
	part_type_direction(global.ImpactParticle, EntityHit.direction, EntityHit.direction, 0, 0);
	part_type_speed(global.ImpactParticle, EntityHit.speed, EntityHit.speed + random_range(0.1, 0.5), 0, 0);
	part_particles_create(global.ImpactParticleFX, x, y, global.ImpactParticle, 16);
	ScreenShake(15);
	
	// Here we should also play a hit sound!
	
	instance_destroy(); // Finally we destroy ourself
}

// Check if we have exited the room and if that is the case, destroy us
CheckProjectileExit();