/// @description Draw Hoverable Buttons

if (room == rm_main_menu) {
	left_bound = x - 180;
	right_bound = x + 180;
	top_bound = y - 40;
	bottom_bound = y + 40;
	
	// Check if the mouse is within the button's bounds
	if (mouse_x > left_bound && mouse_x < right_bound && mouse_y > top_bound && mouse_y < bottom_bound) {
	    // Check if the mouse button is pressed while hovering
	    if (mouse_check_button_pressed(mb_left)) {
	        // Set the timer to 180 frames (3 seconds at 60 FPS)
	        click_timer = 180;
	    }
	}

	// set color based on timer
	if (click_timer > 0) {
	    // draw red outline if timer is active
	    draw_set_color(c_red);
	    // draw border using lines with a loop to simulate thickness
	    for (var i = 0; i < border_thickness; i++) {
	        // top border
	        draw_line(left_bound - i, top_bound - i, right_bound + i, top_bound - i);
	        // bottom border
	        draw_line(left_bound - i, bottom_bound + i, right_bound + i, bottom_bound + i);
	        // left border
	        draw_line(left_bound - i, top_bound - i, left_bound - i, bottom_bound + i);
	        // right border
	        draw_line(right_bound + i, top_bound - i, right_bound + i, bottom_bound + i);
	        }
	    // decrease timer
	    click_timer--;
	} else {
	    // draw black outline if hovering and timer is inactive
	    if (mouse_x > left_bound && mouse_x < right_bound && mouse_y > top_bound && mouse_y < bottom_bound) {
	        draw_set_color(make_color_rgb(224, 208, 129));
	        for (var i = 0; i < border_thickness; i++) {
	            draw_line(left_bound - i, top_bound - i, right_bound + i, top_bound - i);
	            draw_line(left_bound - i, bottom_bound + i, right_bound + i, bottom_bound + i);
	            draw_line(left_bound - i, top_bound - i, left_bound - i, bottom_bound + i);
	            draw_line(right_bound + i, top_bound - i, right_bound + i, bottom_bound + i);
	        }
	    }
	}
} else if (room == rm_map_choose) {
	// TODO: position buttons
}