/// @description Cheats toggle on shift key pressed
// Philip Vishnevsky 11/8/2024

if (keyboard_check_pressed(ord("I")))
{
	global.immortality = !global.immortality;
	show_debug_message("!!! Global Immortality: " + string(global.immortality));
}

if (keyboard_check_pressed(ord("B")))
{
	global.noBuildCost = !global.noBuildCost;
	show_debug_message("!!! Global No Build Cost: " + string(global.noBuildCost));
}

if (keyboard_check_pressed(ord("M")))
{
	global.noMaxTowers = !global.noMaxTowers;
	show_debug_message("!!! Global No Max Towers: " + string(global.noMaxTowers));
}