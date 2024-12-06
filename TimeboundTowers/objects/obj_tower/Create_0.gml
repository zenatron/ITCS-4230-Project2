/// @description Tower range and shooting mechanics
// Eshwar Kanikanti 11/13/24

range = 0;
rate = 0;
cost = 0;
// tutorial debugging variable
global.sold = false;

shootEnemy = noone;
image_speed = 0;

shaderActive = false;
upgradeTimer = 0; // shader duration for tower upgrade


// Eshwar Kanikanti 12/5/2024
// Fixed range and fire rate for the towers + added bullet colors
if (image_index == 0 || image_index == 1) {
	range = 200;
	rate =  room_speed / 2;
	cost = 50;
}

if (image_index == 2  || image_index == 3) {
	range = 200;
	rate =  room_speed / 3;
	cost = 150;
}

if (image_index == 4 || image_index == 5) {
	range = 300;
	rate =  room_speed / 4;
	cost = 250;
}

if (image_index == 6 || image_index == 7) {
	range = 400;
	rate =  room_speed / 5;
	cost = 400;
}