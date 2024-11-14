// Eshwar Kanikanti 11/13/24
// Bullet firing at enemy

if (instance_exists(shootEnemy)) {
	var bullet = instance_create_layer(x, y, "Enemies", obj_bullet);
	bullet.speed = 20;
	bullet.direction = point_direction(x, y, shootEnemy.x, shootEnemy.y);
	alarm[0] = rate
} else {
	shooting = false;
}