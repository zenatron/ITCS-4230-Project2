// Evan Stark - 11/13/2024
// Destroy enemy if health <= 0.

if(enemyHealth <= 0) {
	global.credits += credits_given;
	instance_destroy(self);
}

// Evelyn Hosana - 11/20/24
anim_timer += 1;

if (x > prev_x) {
	image_xscale = -1; // face right
	if (anim_timer >= anim_speed) {
        anim_timer = 0; // reset timer
        image_index += 1; // move to next frame
        if (image_index > 4) image_index = 3; // loop back to frame 3
        if (image_index < 2) image_index = 2; // ensure frame stays within 2-4 range
    }
} else if (x < prev_x) {
	image_xscale = 1; // face left
	if (anim_timer >= anim_speed) {
        anim_timer = 0;
        image_index += 1;
        if (image_index > 4) image_index = 3;
        if (image_index < 2) image_index = 2;
    }
} else if (y > prev_y) {
    image_index = 1; // face down
} else if (y < prev_y) {
    image_index = 0; // face up
}
// update previous position for next step
prev_x = x;
prev_y = y;

// change speed based on powerup
if (global.slow_enemies) { default_speed /= 2; }

// if a path is assigned and not already started
if (path_id != noone && !path_index) { path_start(path_id, default_speed, path_action_stop, true); }

// place particles on enemies
if (has_particle_effect) { part_emitter_region(shimmer_effect, 0, x - 15, x + 15, y - 15, y + 15, -1, -1); }