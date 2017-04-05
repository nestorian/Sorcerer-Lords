// This script generates a randomly generated background for the game world

// Don't forget to adjust these values when changing the zone (room) size!
// Later we have to have a random seed that goes here!

var NumberOfClusters = irandom_range(3, 5);
var NumberOfNebulasInCluster = irandom_range(5, 10);
var NumberOfTints = irandom_range(250, 350);

var NumberOfSmallStars = irandom_range(7000, 8000);
var NumberOfMediumStars = irandom_range(200, 400);
var NumberOfColouredMediumStars = irandom_range(20, 40);
var NumberOfLargeStars = irandom_range(40, 80);
var NumberOfColouredLargeStars = irandom_range(3, 8);

// Create an asset layer for the sprites
SpaceScapeLayer = layer_create(250);

// Create two random colours as the base for the tints and nebulas
var Colour1 = make_colour_rgb(random(255), random(255), random(255));
var Colour2 = make_colour_rgb(random(255), random(255), random(255));

// Create a number of very faint tints based on the two colours
CreateCelestialObject(spTint, Colour1, Colour2, NumberOfTints, SpaceScapeLayer, 0.2, 0.5, 0.75, 4, 0);


// Create a number of nebula clusters ( since these are to be clustered we cannot use the CreateCelestial Objects script
for (i = 0; i < NumberOfClusters; i ++) {
	// Decide a random coordinate that is the center of the cluster
	var ClusterX = random(room_width);
	var ClusterY = random(room_height);
	// Create a number of randomly coloured nebulas in every cluster
	for(j = 0; j < NumberOfNebulasInCluster; j ++) {
		NewNebula = layer_sprite_create(SpaceScapeLayer, random_range(ClusterX-600, ClusterX+600), random_range(ClusterY-600, ClusterY+600), spNebula);
		
		layer_sprite_blend(NewNebula, choose(Colour1, Colour2)); // Set the colour blending
		layer_sprite_speed(NewNebula, 0); // Set the animation speed of the sprite to 0 to avoid animation
		layer_sprite_angle(NewNebula, random(359)); // Randomize the image angle of the sprite
		layer_sprite_alpha(NewNebula,random_range(0.06, 0.15)); // Randomize the alpha
		
		// Scale the sprite within the size range given	
		var NebulaScale = random_range(0.5, 5);
		layer_sprite_xscale(NewNebula, NebulaScale);
		layer_sprite_yscale(NewNebula, NebulaScale);
		
		layer_sprite_index(NewNebula, irandom(13)); // Randomize between the subimages of the sprite
	}
}

// Create a number of small stars
CreateCelestialObject(spSmallStar, c_white, 0, NumberOfSmallStars, SpaceScapeLayer, 0.3, 0.5, 0.5, 1, 1);

// Create a few medium sized stars
CreateCelestialObject(spMediumStar, c_white, 0, NumberOfMediumStars, SpaceScapeLayer, 0.2, 0.5, 0.5, 1, 9);

// Create a few coloured medium sized stars
CreateCelestialObject(spMediumStar, c_aqua, 0, NumberOfColouredMediumStars, SpaceScapeLayer, 0.2, 0.5, 0.2, 1, 9);
CreateCelestialObject(spMediumStar, c_orange, 0, NumberOfColouredMediumStars, SpaceScapeLayer, 0.2, 0.5, 0.2, 1, 9);

// Create a few large stars
CreateCelestialObject(spLargeStar, c_white, 0, NumberOfLargeStars, SpaceScapeLayer, 0.1, 0.4, 0.2, 0.6, 1);

// Create a few coloured large stars
CreateCelestialObject(spLargeStar, c_aqua, 0, NumberOfColouredLargeStars, SpaceScapeLayer, 0.1, 0.4, 0.2, 0.6, 1);
CreateCelestialObject(spLargeStar, c_orange, 0, NumberOfColouredLargeStars, SpaceScapeLayer, 0.1, 0.4, 0.2, 0.6, 1);