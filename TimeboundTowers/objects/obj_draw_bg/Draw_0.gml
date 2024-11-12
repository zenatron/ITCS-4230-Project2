/// @description Check each room and set desired background
// Evelyn Hosana 11/12/2024

if (room == rm_main_menu) {
	draw_sprite(spr_main_bg, 0, 0, 0);
} else if (room == rm_prehistoric) {
	draw_sprite(spr_prehistoric_bg, 0, 0, 0);
} else if (room == rm_medieval) {
	draw_sprite(spr_medieval_bg, 0, 0, 0);
} else if (room == rm_modern) {
	draw_sprite(spr_modern_bg, 0, 0, 0);
} else if (room == rm_map_choose) {
    // Drawing "Choose your Map" text at the top-center of the screen with padding
    draw_text(960, 50, "Choose your Map");

    // Define scaling factor for maps
    var s = 0.25; // Adjust based on how much smaller you want the maps
    var s_width = 1920 * s;
    var s_height = 1080 * s;

    // Draw medieval map in the center
    draw_sprite_ext(spr_medieval_bg, 0, display_get_width() / 2, display_get_height() / 2, s, s, 0, c_white, 1);
    draw_text(display_get_width() / 2 - 50, (display_get_height() / 2) + s_height / 2 + 20, "Medieval Map");

    // Draw prehistoric map on the left
    draw_sprite_ext(spr_prehistoric_bg, 0, display_get_width() / 2 - s_width - 70, display_get_height() / 2, s, s, 0, c_white, 1);
    draw_text(display_get_width() / 2 - s_width - 140, (display_get_height() / 2) + s_height / 2 + 20, "Prehistoric Map");

    // Draw modern map on the right
    draw_sprite_ext(spr_modern_bg, 0, display_get_width() / 2 + s_width + 70, display_get_height() / 2, s, s, 0, c_white, 1);
    draw_text(display_get_width() / 2 + s_width + 30, (display_get_height() / 2) + s_height / 2 + 20, "Modern Map");
}