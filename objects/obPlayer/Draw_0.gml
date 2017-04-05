// Write the states for this instance if the debug mode is on
if (global.DebugMode == true) {
	draw_set_colour(c_lime);
	draw_set_font(foConsole);
	draw_set_halign(fa_center);

	draw_text(x, y + 60, "HP: " + string(HitPoints));
	draw_text(x, y + 80, "Speed: " + string(speed));
	draw_text(x, y + 100, "MaxSpeed: " + string(MaxSpeed));
	draw_text(x, y + 120, "Acceleration: " + string(Acceleration));
	draw_text(x, y + 140, "TurnRate: " + string(TurnRate));
	draw_text(x, y + 160, "My ship: " + string(Vehicle));	
	draw_text(x, y + 180, "My ID: " + string(id));	
}

draw_self();