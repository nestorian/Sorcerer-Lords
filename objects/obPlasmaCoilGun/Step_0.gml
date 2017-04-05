// Run the step event of the parent
event_inherited();

// Increase the fireing timer
SecondsSinceLastShot = SecondsSinceLastShot + 1 / game_get_speed(gamespeed_fps);

// Check if we have an owner
if (instance_exists(Owner)) {
	
	// Get the fire order state from our owner's owner (if it exísts)
	with (Owner) {
		if (instance_exists(Owner))
			obPlasmaCoilGun.FireOrderTransfer = Owner.FireOrder;
	}
		
	// Check if the fire order is true
	if (FireOrderTransfer == true) {
		// Check if the timer is high enough 
		if SecondsSinceLastShot >= ROFInSeconds {
			// Calculate the offset for where to create the projectiles
			Xpos = x + lengthdir_x(ProjectileOffsetX, image_angle);
			Ypos = y + lengthdir_y(ProjectileOffsetY, image_angle);    
   
			// Create a projectile and set its speed and direction (with offset)
			FiredProjectile = instance_create_layer(Xpos, Ypos, "Instances", obPlasmaCoilGunProjectile);
			FiredProjectile.direction = image_angle + random_range(-Spread, Spread);
			FiredProjectile.image_angle = FiredProjectile.direction;
			FiredProjectile.speed = ProjectileSpeed;
    
			// Since we have fired, we reset the timer
			SecondsSinceLastShot = 0;
		}
	}
}