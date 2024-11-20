// Evan Stark - November 6th 2024, November 20th 2024 - ITCS 4230 001
// Testing deleting/"selling" a tower when left mouse button clicked.

if (global.sellButton) {
	instance_destroy();
	global.towerCount -= 1;
	global.credits += cost / 2;
	global.sellButton = false;
}