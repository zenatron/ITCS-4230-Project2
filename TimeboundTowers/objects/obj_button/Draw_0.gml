/// @description Draw button when hovered
// Evelyn Hosana 11/12/2024

if (image_alpha == 1) { draw_self(); }

if (powerup_active) {
	draw_set_color(c_red);
	if (global.double_damage) { draw_text(10, 890, "Double Damage Active!"); }
	if (global.faster_attack) { draw_text(10, 940, "Faster Attack Active!"); }
	if (global.slow_enemies) { draw_text(10, 990, "Slowing Enemies Active!"); }
	if (global.road_block) { draw_text(10, 1040, "Road Block Active!"); }
}