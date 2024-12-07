// Evan Stark - November 13th 2024 - ITCS 4230 001

// Evelyn Hosana 11/28/2024

// modified Evan's implementation in obj_spawner
// assign a path to the enemy based on room
if (room == rm_prehistoric) { 
	path_id = choose(path_prehistoric1, path_prehistoric2);
	sprite_index = spr_mammoth;
}
if (room == rm_medieval) { 
	path_id = choose(path_medieval4, path_medieval2, path_medieval3);
	sprite_index = spr_horse;
}
if (room == rm_modern) { 
	path_id = choose(path_modern1, path_modern2, path_modern3);
	sprite_index = spr_tank;
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