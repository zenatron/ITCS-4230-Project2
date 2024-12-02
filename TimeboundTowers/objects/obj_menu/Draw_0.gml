/// @description Draw Towers or Powerups based on Toggle
// Evelyn Hosana 11/28/2024

draw_self();
draw_set_color(c_white);

// draw tower menu
if (!global.menuToggle) {
	// draw sprite with respective cost
	draw_sprite(spr_tower, 0, 1630, 200);
	draw_text(1650, 137, "50");
	draw_sprite(spr_tower, 2, 1800, 200);
	draw_text(1815, 137, "100");
	draw_sprite(spr_tower, 4, 1630, 360);
	draw_text(1645, 300, "150");
	draw_sprite(spr_tower, 6, 1800, 360);
	draw_text(1805, 300, "200");
} else { // draw powerup menu
	// draw sprite with respective cost
	draw_sprite(spr_powerup, 0, 1630, 200);
	draw_text(1665, 137, "1");
	draw_sprite(spr_powerup, 1, 1800, 200);
	draw_text(1830, 137, "1");
	draw_sprite(spr_powerup, 2, 1630, 360);
	draw_text(1665, 300, "2");
	draw_sprite(spr_powerup, 3, 1800, 360);
	draw_text(1830, 300, "2");
}

// draw tower in merge mode
if (drawTower && pickedTowerSprite != noone) {
    draw_sprite(pickedTowerSprite, pickedTowerIndex, mouse_x, mouse_y);
}