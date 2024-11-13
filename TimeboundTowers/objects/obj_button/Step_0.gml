/// @description Button Controls
// Evelyn Hosana 11/12/2024

// adjusted bounds based on sprite origin
var left = x - sprite_xoffset;
var right = x - sprite_xoffset + sprite_width;
var top = y - sprite_yoffset;
var bottom = y - sprite_yoffset + sprite_height;

// check if mouse is within adjusted boundaries
if (point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom)) { image_alpha = 1; } // sprite fully visible when hovered
else { image_alpha = 0; } // sprite invisible when not hovered

/// @description If mouse button pressed, go to desginated rooms

if (room == rm_main_menu) {
	if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom)) {
		switch (button_type) {
			case "play":
				room_goto(rm_map_choose);
				break;
			case "controls":
				break;
			case "help":
				break;
			case "credits":
				break;
			case "exit":
				game_end();
				break;
		}
	}
}
if (room == rm_map_choose) {
	if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom)) {
	    switch (button_type) {
	        case "map_1":
	            room_goto(rm_prehistoric);
	            break;
	        case "map_2":
	            room_goto(rm_medieval);
	            break;
	        case "map_3":
	            room_goto(rm_modern);
	            break;
	    }
	}
}