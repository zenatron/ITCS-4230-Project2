/// @description Draw buy menu in upper left corner
// Evelyn Hosana, 11/12/2024
draw_sprite(spr_buy_menu, 0, display_get_width(), 0);

// Eshwar Kanikanti 11/13/24
// Test buying and selling, display cost, display towers on menu
draw_text(100, 50, "Credits: ");
draw_text(200, 50, global.credits);
draw_sprite(spr_testTower, 0, 1600, 180);
draw_sprite(spr_tower2, 0, 1660, 180);