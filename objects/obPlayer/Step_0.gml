// Run the step event of the parent
event_inherited();

// Check if we are dead (but only if we are not in a vehicle)
if (Vehicle == noone) {
	if (HitPoints <= 0) {
		// We restart the game
		game_restart();
		// This should be replaced with a suit explodes script, maybe specific for the player?!
		// SuitExplodes();
	}
}

// Check that the player stays inside the room
KeepWithinZone(obPlayer);