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

var tutorial_enemy = instance_nearest(x, y, obj_testEnemy);

if (tutorial_enemy != noone) {
	if (point_distance(x, y, tutorial_enemy.x, tutorial_enemy.y) <= range + 10) {
		if (!shooting) {
			shooting = true;
			alarm[0] = 1;
		}
		
		shootEnemy = tutorial_enemy;
		
	} else {
		shooting = false;
		shootEnemy = noone;
	}
}

// Evelyn Hosana - 12/2/24
if (shaderActive) {
    shader_set(sh_upgrade);
	shader_set_uniform_f(shader_get_uniform(sh_upgrade, "u_time"), current_time / 1000.0); // pass elapsed time in seconds
    draw_sprite(sprite_index, image_index, x, y); // draw tower with shader
    shader_reset();
} else {
    draw_sprite(sprite_index, image_index, x, y); // normal drawing
}