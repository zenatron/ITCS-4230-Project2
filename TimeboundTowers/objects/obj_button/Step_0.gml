/// @description Button Controls
// Evelyn Hosana 11/12/2024

// check if mouse is within adjusted boundaries
if (point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom)) { image_alpha = 1; } // sprite fully visible when hovered
else { image_alpha = 0; } // sprite invisible when not hovered

/// @description If mouse button pressed, go to desginated rooms

if (room == rm_main_menu) {
	if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom)) {
		switch (button_type) {
			case "play":
				room_goto(rm_tutorial);
				break;
			case "controls":
				global.activeMainMenu = "controls";
                break;
            case "help":
				global.activeMainMenu = "help";
                break;
            case "credits":
                global.activeMainMenu = "credits";
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

if (room == rm_tutorial || room == rm_prehistoric || room == rm_medieval || room == rm_modern) {
	if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, left, top, right, bottom)) {
		var draw_tower;
        switch (button_type) {
            case "buy_1":
				// if buying towers (menu toggle = false), not in merge mode and not in sell mode
				if (!global.menuToggle && !global.sellButton && !global.mergeButton) {
	                if (global.credits >= 50) { // if enough credits
						// draw tower at mouse
	                    draw_tower = instance_create_layer(mouse_x, mouse_y, "Towers", obj_drawTower);
						draw_tower.image_index = 0;
	                }
				} else {
					// if buying powerups (menu toggle = true), not in merge mode and not in sell mode
					if (global.menuToggle && !global.sellButton && !global.mergeButton) {
						if (global.tokens >= 1) { // if enough tokens (dropped by "effect" enemies)
							scr_activate_powerup("double_damage", 15); // activate designated powerup for set duration (10 sec)
							global.tokens -= 1; // take away player token
						}
					}
				}
                break;
            case "buy_2":
				if (!global.menuToggle && !global.sellButton && !global.mergeButton) {
	                if (global.credits >= 100) {
	                    draw_tower = instance_create_layer(mouse_x, mouse_y, "Towers", obj_drawTower);
	                    draw_tower.image_index = 2;
	                }
				} else {
					if (global.menuToggle && !global.sellButton && !global.mergeButton) {
						if (global.tokens >= 1) {
							scr_activate_powerup("faster_attack", 15);
							global.tokens -= 1;
						}
					}
				}
                break;
            case "buy_3":
				if (!global.menuToggle && !global.sellButton && !global.mergeButton) {
	                if (global.credits >= 150) {
	                    draw_tower = instance_create_layer(mouse_x, mouse_y, "Towers", obj_drawTower);
	                    draw_tower.image_index = 4;
	                }
				} else {
					if (global.menuToggle && !global.sellButton && !global.mergeButton) {
						if (global.tokens >= 2) {
							scr_activate_powerup("slow_enemies", 10);
							global.tokens -= 2;
						}
					}
				}
                break;
            case "buy_4":
				if (!global.menuToggle && !global.sellButton && !global.mergeButton) {
	                if (global.credits >= 200) {
	                    draw_tower = instance_create_layer(mouse_x, mouse_y, "Towers", obj_drawTower);
	                    draw_tower.image_index = 6;
	                }
				} else {
					if (global.menuToggle && !global.sellButton && !global.mergeButton) {
						if (global.tokens >= 2) {
							scr_activate_powerup("road_block", 20);
							global.tokens -= 2;
						}
					}
				}
                break;
			case "tower":
				global.menuToggle = false;
				break;
			case "powerup":
				global.menuToggle = true;
				break;
			case "merge":
				if(instance_exists(obj_controller)) {
					global.mergeButton = !global.mergeButton;
					if (!global.mergeButton) {
						// reset tower drawing state in merge mode
						with (obj_menu) {
							drawTower = false;
							pickedTowerSprite = noone;
							pickedTowerIndex = -1;
						}
					}
				}
				break;
			// Evan Stark - November 20th 2024 - ITCS 4230 001
			// Implementing Sell button functionality.
			case "sell":
				if(instance_exists(obj_controller)) {
					// Set to opposite truth value just to cover deselecting sell option.
					global.sellButton = !global.sellButton;
				}
				break;
        }
    }
}