/// @description Tower range and shooting mechanics
// Eshwar Kanikanti 11/13/24

draw_self();
draw_set_color(c_red);
draw_circle(x, y, range, true);
var enemy = instance_nearest(x, y, obj_enemy1);

if (enemy != noone) {
	
	if (point_distance(x, y, enemy.x, enemy.y) <= range + 10) {
		if (!shooting) {
			shooting = true;
			alarm[0] = 1;
		}
		
		shootEnemy = enemy;
		
	} else {
		shooting = false;
		shootEnemy = noone;
	}
}