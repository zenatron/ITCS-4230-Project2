/// @description Increase Difficulty of Enemy Spawning Overtime
// Evelyn Hosana - 11/28/2024

// increment spawn timer
spawn_timer += 1;

// check if it's time to spawn enemies
if (spawn_timer >= spawn_interval) {
    spawn_timer = 0; // reset timer

    // spawn enemies based on current max_spawn value
    for (var i = 0; i < max_spawn; i++) {
		// choose enemy between enemy 1, 2 or 3
        var enemy_type = choose(enemy_types[0], enemy_types[1], enemy_types[2]);

        // spawn enemy based on type
        instance_create_layer(-100, -100, "Enemies", enemy_type);
    }
}

// increment difficulty timer
difficulty_timer += 1;

// increase difficulty over time
if (difficulty_timer >= difficulty_interval) {
    difficulty_timer = 0; // reset difficulty timer

    // decrease spawn_interval
    if (spawn_interval > 30) { // minimum interval of 30 frames (0.5 seconds)
        spawn_interval -= 10; // reduce interval to make spawning faster
    }

    // increase max_spawn for more enemies
    if (max_spawn < 5) { // limit to 5 enemies at a time
        max_spawn += 1;
    }
}