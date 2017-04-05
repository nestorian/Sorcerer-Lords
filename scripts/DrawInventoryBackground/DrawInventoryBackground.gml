/// @description Draws the semi transparent invenotry background

// Place the inventory on the left side of the screen
var PaddingX = 20;
var InventoryX = 160;
var InventoryY = 350;
var CenterY = display_get_height() / 2;

// Set draw colour and alpha
draw_set_colour(c_dkgray);
draw_set_alpha(0.3);

// Draw the inventory background
draw_roundrect_ext(PaddingX, CenterY - InventoryY, PaddingX + InventoryX * 2, CenterY + InventoryY, 35, 35, false);
		
// Reset the alpha
draw_set_alpha(1);