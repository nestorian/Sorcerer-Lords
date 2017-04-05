/// @description Draws an inventory grid
/// @param Scale Width and hight of the grid in slots

var Scale = argument0;

var PaddingX = 20;
var InventoryX = 160;
var InventoryY = 350;
var CenterY = display_get_height() / 2;

for (xi = -Scale / 2; xi < Scale / 2; xi ++) {
	for (yi = 0; yi < Scale; yi ++) {
		DrawInventorySlot(InventoryX + PaddingX + 22 + xi * 37, CenterY + 30 + yi * 37);
	}
}