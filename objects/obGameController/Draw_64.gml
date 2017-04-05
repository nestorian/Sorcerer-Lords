/// @description Debug information

// Write some important information about the game, if the debug mode is on
if (global.DebugMode == true) {
	draw_set_colour(c_lime);
	draw_set_font(foConsole);
	draw_set_halign(fa_left);
	draw_text(10, 20, "DEBUG [F1]");
	if (fps < (game_get_speed(gamespeed_fps) * 0.75))
		draw_set_colour(c_red);
	draw_text(10, 40, "Actual FPS: " + string(fps));
	draw_set_colour(c_lime);
	draw_text(10, 55, "Game Speed (FPS): " + string(game_get_speed(gamespeed_fps)));
	//draw_text(10, 70, "Hport and Wport: " + string(view_get_hport(0)) + "/" + string(view_get_wport(0)));
}