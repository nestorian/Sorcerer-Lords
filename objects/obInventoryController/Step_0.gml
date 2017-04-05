//// Calculate the coordinates for the inventory
//InventoryX = camera_get_view_x(view_camera[0]) + 10;
//InventoryY = camera_get_view_y(view_camera[0]) + display_get_height() / 2;

//// Check if the player exist and has a vehicle (otherwise no inventory)
//if (instance_exists(obPlayer) && obPlayer.Vehicle != noone) {
//	// Get the type of vehicle the player has
//	with obPlayer {
//		obInventoryController.InventoryType = Vehicle.Inventory;
//	}

//	// If there is no inventory, create it
//	if (instance_exists(InventoryType) == false) {
//		instance_create_layer(InventoryX, InventoryY, "Instances", InventoryType)
//	}

//	// Set the visibility of the inventory
//	if (global.ShowInventory) {
//		InventoryType.visible = true;
//	}
//	else {
//		InventoryType.visible = false;
//	}
//}

