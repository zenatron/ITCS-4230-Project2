/// @description Define Timer and Difficulty of Enemy Spawning
// Evelyn Hosana - 11/28/2024

spawn_timer = 0; // timer to track spawning
spawn_interval = 120; // interval between spawns (2 seconds)
difficulty_timer = 0; // timer to increase difficulty
difficulty_interval = 600; // interval to increase difficulty (every 10 seconds)
enemy_types = [obj_enemy1, obj_enemy2, obj_enemy3]; // array of enemy types
max_spawn = 1; // max number of enemies to spawn at a time

// set alarm 0 to trigger after 90 seconds
alarm[0] = 5400;
