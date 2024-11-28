// Evan Stark - 11/13/2024
// Destroy enemy if health <= 0.

if(enemyHealth <= 0) {
	global.credits += credits_given;
	instance_destroy(self);
}

// Evelyn Hosana - 11/20/24
if (x > prev_x) {
    image_index = 2; // face right
	image_xscale = -1;
} else if (x < prev_x) {
    image_index = 2; // face left
	image_xscale = 1;
} else if (y > prev_y) {
    image_index = 1; // face down
} else if (y < prev_y) {
    image_index = 0; // face up
}
// update previous position for next step
prev_x = x;
prev_y = y; 

// if a path is assigned and not already started
if (path_id != noone && !path_index) { path_start(path_id, default_speed, path_action_stop, true); }

// place particles on enemies
if (has_particle_effect) { part_emitter_region(shimmer_effect, 0, x - 15, x + 15, y - 15, y + 15, -1, -1); }