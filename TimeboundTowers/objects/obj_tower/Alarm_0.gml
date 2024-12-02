/// @description Bullet logic
// Evan Stark - November 13th 2024 - ITCS 4230 001
// Creating a new bullet and firing at the enemy.
// instance_create_layer(obj_player.x, obj_player.y, "Enemies", obj_bullet);

// Eshwar Kanikanti 11/13/24
// Bullet firing at enemy
if (instance_exists(shootEnemy)) {
	var bullet = instance_create_layer(x, y, "Enemies", obj_bullet);
	// increase bullet speed based on powerup
	if (global.faster_attack) { bullet.speed *= 2; }
	bullet.direction = point_direction(x, y, shootEnemy.x, shootEnemy.y);
	alarm[0] = rate
} else {
	shooting = false;
}