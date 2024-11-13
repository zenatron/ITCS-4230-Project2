/// @description Display map options to players
// Evelyn Hosana 11/12/2024

// check if we're in map selection room
if (room == rm_map_choose) {
    // set color and font for title
    draw_set_color(c_white);
    draw_set_font(f_goth_title);
	draw_text((display_get_width() / 2) - 400, 50, "Choose which Map to Play:");
	
	// scaled sprite dimensions
	var scale_factor = 0.25;
	var scaled_width = 1920 * scale_factor;
	var scaled_height = 1080 * scale_factor;

	var display_sprite;
	var x_position = x - scaled_width / 2;;
	var y_position = y - sprite_height * 0.25;
	var map_name;

	switch (map_display) {
	    case "prehistoric":
	        display_sprite = spr_prehistoric_bg;
			map_name = "The Prehistoric Age";
	        break;
	    case "medieval":
	        display_sprite = spr_medieval_bg;
			map_name = "The Medieval Age";
	        break;
	    case "modern":
	        display_sprite = spr_modern_bg;
			map_name = "The Modern Age";
	        break;
	}
	// draw selected map display sprite if it's set
	if (display_sprite != undefined) {
	    draw_sprite_ext(display_sprite, 0, x_position, y_position, scale_factor, scale_factor, 0, c_white, 1);
		
		draw_set_font(f_goth_body);
		var text_y_position = y_position + scaled_height + 50;
        draw_text(x_position + 110, text_y_position, map_name);
	}
}