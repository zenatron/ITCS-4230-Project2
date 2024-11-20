/// @description Draw Game Elements
// Eshwar Kanikanti 11/13/24
// Test buying and selling, display cost, display towers on menu
draw_set_color(c_black);
draw_text(100, 50, "Credits: ");
draw_text(200, 50, global.credits);

// Evan Stark - November 13th 2024 - ITCS 4230 001
// Displaying home health, active cheat codes on screen.
draw_text(100, 100, "Health: ");
draw_text(200, 100, health);
draw_text(100, 150, "Immortality?: ");
draw_text(300, 150, global.immortality);
draw_text(100, 200, "No build cost?: ");
draw_text(300, 200, global.noBuildCost);
draw_text(100, 250, "No tower limit?: ");
draw_text(300, 250, global.noMaxTowers);
// Evan Stark - November 15th 2024 - ITCS 4230 001
// Drawing text to show the tower limit.
draw_text(100, 300, string_concat("Towers used: ", global.towerCount, "/", global.maxTowers) );

// Evan Stark - November 20th 2024 - ITCS 4230 001
// Drawing text to track sell button's status.
draw_text(100, 350, string_concat("Sell mode: ", global.sellButton) );

// Evelyn Hosana 11/18/2024
draw_set_color(c_white);
// draw sprite with respective cost
draw_sprite(spr_tower, 0, 1630, 200);
draw_text(1650, 137, "50");
draw_sprite(spr_tower, 2, 1800, 200);
draw_text(1815, 137, "100");
draw_sprite(spr_tower, 4, 1630, 360);
draw_text(1645, 300, "150");
draw_sprite(spr_tower, 6, 1800, 360);
draw_text(1805, 290, "200");