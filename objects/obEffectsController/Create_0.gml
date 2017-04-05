/// @description Controls various global effects in the game


// IMPACT PARTICLE SYSTEM

// Create the particle system
global.ImpactParticleFX = part_system_create_layer("FXtop", true);

// Create the particle
global.ImpactParticle = part_type_create();
part_type_sprite(global.ImpactParticle, paGlow, false, false, false);
part_type_orientation(global.ImpactParticle, 0, 360, 0, 0, false);
part_type_size(global.ImpactParticle, 0.2, 0.35, 0.01, 0.15);
part_type_life(global.ImpactParticle, 10, 16);
part_type_alpha3(global.ImpactParticle, 0, 0.5, 0);
part_type_blend(global.ImpactParticle, true);
part_type_colour1(global.ImpactParticle, c_orange);



// EXPLOSION PARTICLE SYSTEM

// Create the particle system
global.ExplosionParticleFX = part_system_create_layer("FXtop", true);

// Create the particle
global.ExplosionParticle = part_type_create();
part_type_sprite(global.ExplosionParticle, paSmoke, false, false, false);
part_type_orientation(global.ExplosionParticle, 0, 360, 0, 1, false);
part_type_size(global.ExplosionParticle, 1, 1.25, -0.01, 0.25);
part_type_life(global.ExplosionParticle, 15, 35);
part_type_alpha3(global.ExplosionParticle, 0, 0.5, 0);
part_type_blend(global.ExplosionParticle, true);
part_type_direction(global.ExplosionParticle, 0, 360, 0, 0.1);
part_type_speed(global.ExplosionParticle, 0.01, 2, -0.01, 0.1);
part_type_colour1(global.ExplosionParticle, c_orange);



// ENGINE PARTICLE SYSTEM

// Create the particle system
global.EngineParticleFX = part_system_create_layer("FXbottom", true);

// Create the particle
global.EngineParticle = part_type_create();
part_type_sprite(global.EngineParticle, paEngine, false, false, false);
part_type_orientation(global.EngineParticle, 0, 360, 0, 1, false);
part_type_size(global.EngineParticle, 0.1, 0.4, -0.01, 0.1);
part_type_life(global.EngineParticle, 3, 5);
part_type_alpha3(global.EngineParticle, 0, 0.8, 0);
part_type_blend(global.EngineParticle, true);
part_type_colour1(global.EngineParticle, c_orange);



// TRAIL PARTICLE SYSTEM

// Create the particle system
global.TrailParticleFX = part_system_create_layer("FXbottom", true);

// Create the particle
global.TrailParticle = part_type_create();
part_type_sprite(global.TrailParticle, paSmoke, false, false, false);
part_type_scale(global.TrailParticle, 2.5, 1);
part_type_orientation(global.TrailParticle, 0, 360, 0, 1, false);
part_type_size(global.TrailParticle, 0.25, 0.35, -0.01, 0.1);
part_type_life(global.TrailParticle, 50, 70);
part_type_alpha3(global.TrailParticle, 0, 0.04, 0);
part_type_colour1(global.TrailParticle, c_silver);