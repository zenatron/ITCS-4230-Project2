/// @description Draw Game Elements

if (room != rm_main_menu && room != rm_map_choose) {
	// Eshwar Kanikanti 11/13/24
	// Test buying and selling, display cost, display towers on menu
	draw_set_color(c_black);
	draw_text(100, 50, "Credits: ");
	draw_text(200, 50, global.credits);
	draw_text(100, 100, "Tokens: ");
	draw_text(200, 100, global.tokens);

	// Evan Stark - November 13th-20th 2024 - ITCS 4230 001
	// Displaying home health
	draw_text(100, 150, "Health: ");
	draw_text(200, 150, health);
	// Drawing text to show the tower limit.
	draw_text(100, 200, string_concat("Towers used: ", global.towerCount, "/", global.maxTowers) );
	// Drawing text to track sell button's status.
	draw_text(100, 250, string_concat("Sell mode: ", global.sellButton) );
	
	// Evelyn Hosana - 11/28/24
	// modified Evan's implementation to only display cheats when toggled "secretly"
	draw_set_color(c_red);
	if (immortality_toggle) { draw_text(100, 300, "Immortality: Enabled"); }
	if (build_cost_toggle) { draw_text(100, 350, "No Build Cost: Enabled"); }
	if (max_tower_toggle) { draw_text(100, 400, "No Tower Limit: Enabled"); }
}