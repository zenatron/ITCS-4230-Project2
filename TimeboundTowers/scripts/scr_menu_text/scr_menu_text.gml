function scr_menu_text(){
	// only draw overlay if an active menu is selected
	if (global.activeMainMenu != "") {
	    // draw semi-transparent black box
	    var box_x1 = 600;
	    var box_y1 = 350;
	    var box_x2 = room_width - 100;
	    var box_y2 = room_height - 150;

	    draw_set_color(make_color_rgb(179, 167, 156));
		draw_set_alpha(0.3);
	    draw_rectangle(box_x1, box_y1, box_x2, box_y2, false);

	    // determine text based on active menu
	    var text_to_display = "";
	    switch (global.activeMainMenu) {
	        case "controls":
	            text_to_display = "Timebound Towers operates on a \nmouse-based movement system. Use 'Left-Click' to \nplace towers, switch between menu options, \nand toggle between sell and merge modes.";
	            break;
	        case "help":
	            text_to_display = "What is Timebound Towers? This is a \ntower-defense game inspired by games like \nAge of War (level and enemy design) and Bloons \n Tower Defense (core game mechanic). Timebound \nTowers also uses a merging feature used by various \npuzzle games to spice up combinations of \nattack patterns! Your goal as the player is to keep \nyour base health from reaching 0 through an \nonslaught of various enemy types.";
	            break;
	        case "credits":
	            text_to_display = "Game developed by ByteBattalion.\n\nMembers include:\nPhil Vishnevsky, \nEshwar Kanikanti, \nEvan Stark & \nEvelyn Hosana";
	            break;
	    }

		// set text alignment and font
		draw_set_alpha(1);
	    draw_set_color(c_black);
		draw_set_font(f_goth_menu);
	    draw_set_halign(fa_center);
	    draw_set_valign(fa_middle);
		
	    // draw text inside box
	    draw_text_ext((box_x1 + box_x2) / 2, (box_y1 + box_y2) / 2, text_to_display, -1, room_width - 100);
	}
}