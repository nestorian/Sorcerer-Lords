// The GameController deals with much of the basic stuff in the game such as user input

// Basic shortcut keys
if (keyboard_check(vk_escape)) // Press ESCAPE to close the game
	game_end();
if (keyboard_check(vk_backspace)) // Press BACKSPACE to restart the game
	game_restart();
if (keyboard_check_pressed(vk_tab)) { // Press TAB for debug activation
	ScreenShake(20);
}

// Toggle debug mode
if (keyboard_check_pressed(vk_f1) && global.DebugMode == true)
	global.DebugMode = false;
else if (keyboard_check_pressed(vk_f1) && global.DebugMode == false)
	global.DebugMode = true;


// Toggle flight mode
if (keyboard_check_pressed(vk_space) && global.FlightMode == true)
	global.FlightMode = false;
else if (keyboard_check_pressed(vk_space) && global.FlightMode == false)
	global.FlightMode = true;


// Player controls
if (instance_exists(obPlayer)) { // Only check if the player exists

	// Use:
	if (mouse_check_button(mb_left))
		global.UseOrder = true;
	else
		global.UseOrder = false;
		
	// Inventory:
	if (keyboard_check_pressed(ord("I")) && obPlayer.Vehicle != noone) {
		if (global.ShowInventory == false)
			global.ShowInventory = true;
		else
			global.ShowInventory = false;
	}
	
	// Exit vehicle:
	if (keyboard_check_pressed(ord("B")) && obPlayer.Vehicle != noone) {
		ExitShip(obPlayer);
	}
		
	
	// Flight controls:
	// Use the W-key to fly forward
	if (keyboard_check(ord("W"))) {
		// Accelerate as fast as possible
		Accelerate(obPlayer);
	}
	// If the W-key is not pressed
	else {
		// Decelerate as fast as possible
		Decelerate(obPlayer);
	}
	// Only check for steering, facing and fire if the flight mode is on
	if (global.FlightMode) {
		// Fire:
		if (mouse_check_button(mb_left)) {
			if (obPlayer.Vehicle != noone)
				obPlayer.FireOrder = true; 		
			}
		else
			obPlayer.FireOrder = false;
		
		// Save the distance between the player and the cursor
		DistanceToCursor = point_distance(obPlayer.x, obPlayer.y, mouse_x, mouse_y); 
	    // Facing:
	    // Check that the mouse cursor is not hoovering directly over the player's ship
	    if (DistanceToCursor > 100) {
	        // Find the mouse cursor to see where the player wants to face
	        IntendedDirection = point_direction(obPlayer.x, obPlayer.y, mouse_x, mouse_y);
        
			// Turn in that direction
			Turn(obPlayer, IntendedDirection);
	    }
	}
}


// SCREEN SHAKE

// Check if the amount of screen shake is zero
if ScreenShakeAmount > 0 { 
    ScreenShakeAmount = ScreenShakeAmount - 5;
}
else {
    ScreenShakeAmount = 0;
    Xposition = camera_get_view_x(view_camera);
    Yposition = camera_get_view_y(view_camera);
}

// Store the random range we will use for the shake
ShakeX = random_range(-ScreenShakeAmount, ScreenShakeAmount);
ShakeY = random_range(-ScreenShakeAmount, ScreenShakeAmount);

// Adapt the shake distance to the display so that it's actually possible for it to shake
camera_set_view_size(view_camera, global.DisplayWidth - abs(ShakeX), global.DisplayHeight - abs(ShakeY));

// Throw in some random tilting of the view as well
camera_set_view_angle(view_camera, 0 + (ShakeX / 20));

// Perform the actual shake
camera_set_view_pos(view_camera, Xposition + ShakeX, Yposition + ShakeY);