if (room == rm_main_menu) {
	// Check if the mouse is within the button's bounds
	var is_hovered = (mouse_x > left_bound && mouse_x < right_bound && mouse_y > top_bound && mouse_y < bottom_bound);

	if (is_hovered && mouse_check_button_pressed(mb_left)) {
	    // Set the click timer to 180 frames (3 seconds at 60 FPS)
	    click_timer = 180;

	    // perform action based on button_id (opposite direction)
	    switch (button_id) {
	        case 1: // "exit"
	            game_end();
	            break;
	        case 2: // "credits"
	            break;
	        case 3: // "help"
	            break;
	        case 4: // "controls"
	            break;
	        case 5: // "play"
				room_goto(rm_map_choose);
	            break;
	    }
		click_timer--;
	}
} else if (room == rm_map_choose) {
	// Check if the mouse is within the button's bounds
	var is_hovered = (mouse_x > left_bound && mouse_x < right_bound && mouse_y > top_bound && mouse_y < bottom_bound);

	if (is_hovered && mouse_check_button_pressed(mb_left)) {
	    // Set the click timer to 180 frames (3 seconds at 60 FPS)
	    click_timer = 180;

	    // perform action based on button_id (opposite direction)
	    switch (button_id) {
	        case 1: // "exit"
	            break;
	        case 2: // "credits"
	            break;
	        case 3: // "help"
	            break;
	    }
		click_timer--;
	}
}