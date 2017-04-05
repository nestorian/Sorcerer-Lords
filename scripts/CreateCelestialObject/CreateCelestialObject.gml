/// @description Creates celestial objects of a certain type and number
/// @param ObjectType What type of object should be created
/// @param Colour1 Set one of the two colours
/// @param Colour2 Set the second (or send a zero if only one colour should be used)
/// @param {int} NumberOfObjects The number of objects to be created
/// @param {string} Layer On what layer should the objects be created?
/// @param MinAlpha The minumum randomised alpha value of the objects
/// @param MaxAlpha The maximum randomised alpha value of the objects
/// @param MinSize The minumum randomised size of the objects
/// @param MaxSize The maximum randomised size of the objects
/// @param SubImages The number of subimages to randomise between

var CelestialObjectType = argument0;
var Colour1 = argument1;
var Colour2 = argument2;
var NumberOfCelestialObjects = argument3;
var Layer = argument4;
var MinAlpha = argument5;
var MaxAlpha = argument6;
var MinSize = argument7;
var MaxSize = argument8;
var SubImages = argument9;

// Create the celestial objects
for(i = 0; i < NumberOfCelestialObjects; i ++) {
	NewCelestialObject = layer_sprite_create(Layer, random(room_width), random(room_height), CelestialObjectType);
	
	// Set the colour blending according to the colours given
	if (Colour2 != 0) 
		layer_sprite_blend(NewCelestialObject, choose(Colour1, Colour2));
	else
		layer_sprite_blend(NewCelestialObject, Colour1);
	
	layer_sprite_index(NewCelestialObject, irandom(SubImages)); // Randomize between the subimages of the sprite
	layer_sprite_speed(NewCelestialObject, 0); // Set the animation speed of the sprite to 0 to avoid animation
	layer_sprite_angle(NewCelestialObject, random(359)); // Randomize the image angle of the sprite
	layer_sprite_alpha(NewCelestialObject,random_range(MinAlpha, MaxAlpha)); // Randomize the alpha within the given range
	
	// Scale the sprites within the size range given	
	var CelestialObjectScale = random_range(MinSize, MaxSize);
	layer_sprite_xscale(NewCelestialObject, CelestialObjectScale);
	layer_sprite_yscale(NewCelestialObject, CelestialObjectScale);
}