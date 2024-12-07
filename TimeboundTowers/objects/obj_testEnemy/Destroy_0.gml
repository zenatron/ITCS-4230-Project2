/// @description Remove Particles and Give Tokens
// Evelyn Hosana - 12/3/2024

if (has_particle_effect) { 
	part_emitter_destroy(shimmer_effect, 0);
	if (room != rm_death) {
		global.tokens += 1;
	}
}