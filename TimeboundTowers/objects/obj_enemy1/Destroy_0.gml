/// @description Handle Destruction of Enemy
// Evelyn Hosana - 11/28/24

if (has_particle_effect) {
	part_emitter_destroy(shimmer_effect, 0);
	if (room != rm_death) {
		global.tokens += tokens_given;
	}
}