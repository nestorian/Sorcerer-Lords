/// @description Inventory
// If the player is our owner and the ShowInventory state is true we show the inventory
if (Owner == obPlayer.id) {
	if (global.ShowInventory == true) {

		// Draw the inventory background
		DrawInventoryBackground();		
		
		// Draw an inventory grid 3 slots wide
		DrawInventoryGrid(3);
		
		// Draw an inventory slot
		//DrawInventorySlot(InventoryX + PaddingX, CenterY + 32);
			
	}
}

draw_set_colour(c_lime);
draw_set_font(foConsole);
draw_set_halign(fa_center);
draw_text(100, 100, "My owner: " + string(Owner));