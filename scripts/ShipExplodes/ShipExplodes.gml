// Create an explosion particle effect and destroy the ship object
part_particles_create(global.ExplosionParticleFX, x, y, global.ExplosionParticle, 75);
ScreenShake(60);
instance_destroy();

// We should also add some audio here!