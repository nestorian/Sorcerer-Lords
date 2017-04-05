/// @description Checks if the player or any other suit tries to board a vehicle

// Make sure that I don't already have an owner
if (instance_exists(Owner) == false) {
    // If not, check if the player is touching me
	TouchingPlayer = instance_place(x, y, obPlayer);
	// Check if the player exists and is not already in a vehicle
	if (instance_exists(TouchingPlayer) && TouchingPlayer.Vehicle == noone) {
		// Check that we also have our B-key pressed
		if (keyboard_check(ord("B"))) {
			EnterShip(TouchingPlayer);
			// Play the enter airlock sound
			return;
		}
	}
	else {
		// If not, check if any suit is touching me
		TouchingEntity = instance_place(x, y, obSuit);
	    if (instance_exists(TouchingEntity) && TouchingEntity.Vehicle == noone) {
			EnterShip(TouchingEntity);
			// Play the enter airlock sound
		}
	}
}