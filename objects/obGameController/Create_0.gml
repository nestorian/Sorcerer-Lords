// Sets some fundamental characteristics of the game

// Set the anti aliasing to 2x and turn on vsync
display_reset(2, true); // This should be a player choice!

// Screen mode
window_set_fullscreen(true);

// Get the width and height of the users screen
global.DisplayWidth = display_get_width();
global.DisplayHeight = display_get_height();

// Set how much we want to show on the screen
camera_set_view_size(view_camera, global.DisplayWidth, global.DisplayHeight);
//view_wview = global.DisplayWidth;
//view_hview = global.DisplayHeight;

// How much of the screen do we want this to take up?
view_wport = global.DisplayWidth;
view_hport = global.DisplayHeight;

// Resize the surface
surface_resize(application_surface, global.DisplayWidth, global.DisplayHeight);

// Initialise the variables used for screenshake
Xposition = 0;
Yposition = 0;
ScreenShakeAmount = 0;

// Set a custom sprite as cursor
window_set_cursor(cr_none);
cursor_sprite = spCrossHair;

// Use truly random numbers
randomize();

// Set the debug mode to on as default (this should of course be changed later)
global.DebugMode = true;

// Set the flight mode to on as default
global.FlightMode = true;

// State - Hide/show the inventory
global.ShowInventory = false;

// Initialise the Start Zone
CreateSpaceScape();


// TEMPORARY - Create some stuff
instance_create_layer(obPlayer.x + 75, obPlayer.y + 75, "Instances", obManticore);
instance_create_layer(obPlayer.x - 75, obPlayer.y - 75, "Instances", obScimitar);

PirateSpawnX = random(room_width / 5);
PirateSpawnY = random(room_height / 5);
instance_create_layer(PirateSpawnX, PirateSpawnY, "Instances", obScimitar);
instance_create_layer(PirateSpawnX, PirateSpawnY, "PickUps", obPlasmaCoilGun);
instance_create_layer(PirateSpawnX, PirateSpawnY, "Instances", obPirate);