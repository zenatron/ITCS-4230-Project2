if (room == rm_prehistoric) { 
	path_id = choose(path_prehistoric1, path_prehistoric2);
	sprite_index = spr_caveman;
}
if (room == rm_medieval) { 
	path_id = choose(path_medieval4, path_medieval2, path_medieval3);
	sprite_index = spr_knight;
}
if (room == rm_modern) { 
	path_id = choose(path_modern1, path_modern2, path_modern3);
	sprite_index = spr_soldier;
}

image_speed = 0;
prev_x = x;
prev_y = y;
anim_timer = 0; // tracks time for animation
anim_speed = 10; // lower value = faster animation, higher value = slower animation

// 5% chance of being "token" dropping enemy
if random(100) < 5 {
    has_particle_effect = true;
    shimmer_effect = part_system_create(ps_shimmer); // create particle system
} else { has_particle_effect = false; }