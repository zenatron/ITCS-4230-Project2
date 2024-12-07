/// @description Wave spawning logic.
// Evan Stark - December 6th 2024 - ITCS 4230 001
// Spawning logic for enemies.

function scr_wave_system(){
	global.waveCounter += 1;
	global.enemyCount = 5 + (1.5 * global.waveCounter);
	
	// For enemyCount, randomly spawn an enemy.
	for (var _i = 0; _i < global.enemyCount; _i++) {
		if (global.canSpawnEnemy) {
			// choose enemy between enemy 1, 2 or 3
			var enemy_type = choose(global.enemy_types[0], global.enemy_types[1], global.enemy_types[2]);
			
			// spawn enemy based on type
			instance_create_layer(-100, -100, "Enemies", enemy_type);
			path_start(enemy_type.path_id, enemy_type.default_speed, path_action_stop, true);
			
			// Activate cooldown alarm on the wave_system.
			global.canSpawnEnemy = false;
			obj_waveSystem.alarm[1] = 4 - (0.16 * global.waveCounter)
		}

	}

}