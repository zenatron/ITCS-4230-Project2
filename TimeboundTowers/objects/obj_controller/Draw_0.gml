/// @description Draw Game Elements

if (room != rm_main_menu && room != rm_map_choose) {
	draw_set_halign(fa_left);
	// Eshwar Kanikanti 11/13/24
	// Test buying and selling, display cost, display towers on menu
	draw_set_color(c_black);
	draw_set_font(f_goth_body);
	draw_text(50, 50, "Credits: ");
	draw_text(150, 50, global.credits);
	draw_text(50, 100, "Tokens: ");
	draw_text(150, 100, global.tokens);

	// Evan Stark - November 13th-20th 2024 - ITCS 4230 001
	// Displaying home health
	draw_text(50, 150, "Health: ");
	draw_text(150, 150, health);
	// Drawing text to show the tower limit.
	draw_text(50, 200, string_concat("Towers used: ", global.towerCount, "/", global.maxTowers) );
	// Drawing text to track sell button's status.
	draw_text(50, 250, string_concat("Sell mode: ", global.sellButton) );
	draw_text(50, 300, string_concat("Merge mode: ", global.mergeButton) );
	
	// Evan Stark - December 6th 2024 - ITCS 4230 001
	// Displaying wave nummber.
	if (instance_exists(obj_waveSystem)) {
		draw_text(50, 350, string_concat("WAVE", " ", global.waveCounter) );
	
		// DEBUG ONLY
		draw_text(50, 400, string_concat("New wave alarm: ", obj_waveSystem.alarm[0]));
		draw_text(50, 450, string_concat("Enemy interval alarm: ", obj_waveSystem.alarm[1]));
	}
	// Evelyn Hosana - 11/28/24
	// modified Evan's implementation to only display cheats when toggled "secretly"
	draw_set_color(c_red);
	if (global.immortality) { draw_text(50, 500, "Immortality: Enabled"); }
	if (global.noBuildCost) { draw_text(50, 550, "No Build Cost: Enabled"); }
	if (global.noMaxTowers) { draw_text(50, 600, "No Tower Limit: Enabled"); }
}