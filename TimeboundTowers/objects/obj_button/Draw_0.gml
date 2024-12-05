/// @description Draw button when hovered
// Evelyn Hosana 11/12/2024

if (image_alpha == 1) { draw_self(); }

if (global.double_damage || global.faster_attack || global.slow_enemies || global.road_block) {
    powerup_active = true; // at least one powerup is active
} else {
    powerup_active = false;
}

if (powerup_active) {
	draw_set_color(c_red);
	if (global.double_damage) { draw_text(10, 890, "Double Damage Active!"); }
	if (global.faster_attack) { draw_text(10, 940, "Faster Attack Active!"); }
	if (global.slow_enemies) { draw_text(10, 990, "Slowing Enemies Active!"); }
	if (global.road_block) { draw_text(10, 1040, "Road Block Active!"); }
}

if (menu_active) { scr_menu_box(menu_type); } // call menu box script