/// @description Checks if an object is being picked up by a ship

// Make sure that I don't already have an owner
if (instance_exists(Owner) == false) {
    // If not, check if a ship is touching me
	TouchingShip = instance_place(x, y, obShip);
	
    if (instance_exists(TouchingShip)) {
		// CHECK THAT THE ENTITY HAS A FREE INVENTORY SLOT
 
        // In that case store this ship as our owner
        Owner = TouchingShip.id;
 
		// ADD THE OBJECT TO THE ENTITY'S INVENTORY HERE!
        
        // Play the pick-up sound (FIX THIS SOUND!)
        //audio_play_sound(soPickUpObject, 0.2, false);
    }
}