/// @description Tower range and shooting mechanics
// Eshwar Kanikanti 11/13/24

range = 0;
rate = 0;
cost = 0;
// tutorial debugging variable
global.sold = false;

if (image_index == 0) {
	range = 200;
	rate =  room_speed / 2;
	cost = 50;
}

shootEnemy = noone;
image_speed = 0;

shaderActive = false;
upgradeTimer = 0; // shader duration for tower upgrade