/// @description Emit Particles adn Check Health
// Evelyn Hosana - 12/3/2024

if(enemyHealth <= 0) {
	global.credits += credits_given;
	instance_destroy(self);
}

// place particles on enemies
if (has_particle_effect) { part_emitter_region(shimmer_effect, 0, x - 15, x + 15, y - 15, y + 15, -1, -1); }