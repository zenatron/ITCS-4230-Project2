/// @description Tower range and shooting mechanics
// Eshwar Kanikanti 11/13/24

range = 0;
rate = 0;
cost = 0;

if (image_index == 0) {
	range = 200;
	rate =  room_speed / 2;
	cost = 50;
}

if (image_index == 2) {
	range = 200;
	rate =  room_speed / 4;
	cost = 100;
}

if (image_index == 4) {
	range = 300;
	rate =  room_speed / 6;
	cost = 150;
}

if (image_index == 6) {
	range = 400;
	rate =  room_speed / 8;
	cost = 200;
}

shootEnemy = noone;
image_speed = 0;