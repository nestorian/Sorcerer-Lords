/// @description Draws a single inventory slot
/// @param PosX The X-coordinate
/// @param PosY The Y-coordinate

var PosX = argument0;
var PosY = argument1;

// Set the drawing colour and alpha
draw_set_colour(c_dkgray);
draw_set_alpha(0.3);

// Draw the inventory slot
draw_rectangle(PosX - 17, PosY - 17, PosX + 17, PosY + 17, false);
draw_set_alpha(1);
draw_rectangle(PosX - 17, PosY - 17, PosX + 17, PosY + 17, true);		