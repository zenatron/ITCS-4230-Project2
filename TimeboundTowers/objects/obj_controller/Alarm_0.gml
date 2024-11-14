/// @description Random enemy spawning for the playable.

// Evan Stark - November 13th 2024 - ITCS 4230 001
// Once alarm goes off create new test enemy.
instance_create_layer(0, 0, "Enemies", obj_testEnemy);
alarm[0] = room_speed * 3;
