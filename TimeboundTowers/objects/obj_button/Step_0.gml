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
	            room_goto(rm_modern); // temporary for testing
	            break;
	    }
	}
}

if (room == rm_prehistoric || room == rm_medieval || room == rm_modern) {
	if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom)) {
		var draw_tower;
        switch (button_type) {
            case "buy_1":
				if (!global.menuToggle) { // if buying towers
	                if (global.credits >= 50) { // if enough credits
						// draw tower at mouse
	                    draw_tower = instance_create_layer(mouse_x, mouse_y, "Towers", obj_drawTower);
						draw_tower.image_index = 0;
	                }
				} else { // if buying powerups
					// powerup functionality:
					// if enough tokens
					// draw tokens at mouse
				}
                break;
            case "buy_2":
				if (!global.menuToggle) {
	                if (global.credits >= 100) {
	                    draw_tower = instance_create_layer(mouse_x, mouse_y, "Towers", obj_drawTower);
	                    draw_tower.image_index = 2;
	                }
				} else {
					// powerup 2
				}
                break;
            case "buy_3":
				if (!global.menuToggle) {
	                if (global.credits >= 150) {
	                    draw_tower = instance_create_layer(mouse_x, mouse_y, "Towers", obj_drawTower);
	                    draw_tower.image_index = 4;
	                }
				} else {
					// powerup 3
				}
                break;
            case "buy_4":
				if (!global.menuToggle) {
	                if (global.credits >= 200) {
	                    draw_tower = instance_create_layer(mouse_x, mouse_y, "Towers", obj_drawTower);
	                    draw_tower.image_index = 6;
	                }
				} else {
					// powerup 4
				}
                break;
			case "tower":
				global.menuToggle = false;
				break;
			case "powerup":
				global.menuToggle = true;
				break;
			// Evan Stark - November 20th 2024 - ITCS 4230 001
			// Implementing Sell button functionality.
			case "sell":
				if(instance_exists(obj_controller)) {
					// Set to opposite truth value just to cover deselecting sell option.
					global.sellButton = !global.sellButton;
				}
			case "merge":
				break;
        }
    }
}