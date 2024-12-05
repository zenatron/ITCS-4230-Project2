/// @description Emit Particles, Move Animation, and Check Health
// Evelyn Hosana - 12/3/2024

// increment frame timer
frame_timer++;

// check if it's time to change frames
if (frame_timer >= frame_speed) {
    frame_timer = 0; // reset timer

    // increment image_index
    image_index = (image_index + 1) % 6; // loop between 0 to 5
}


// add credits and destroy if dead
if(enemyHealth <= 0) {
	global.credits += credits_given;
	instance_destroy(self);
}

// place particles on enemies
if (has_particle_effect) { part_emitter_region(shimmer_effect, 0, x - 15, x + 15, y - 15, y + 15, -1, -1); }