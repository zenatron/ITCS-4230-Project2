/// @description Enemy spawning interval.
// Evan Stark - December 6th 2024 - ITCS 4230 001

var enemy_type = choose(enemy_types[0], enemy_types[1], enemy_types[2]);
			
// spawn enemy based on type
instance_create_layer(-100, -100, "Enemies", enemy_type);
path_start(enemy_type.path_id, enemy_type.default_speed, path_action_stop, true);

alarm[1] = (3 - (0.18 * global.waveCounter)) * room_speed;
