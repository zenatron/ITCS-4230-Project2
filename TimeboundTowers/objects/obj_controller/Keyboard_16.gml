snd_victory/// @description Cheats toggle on shift key pressed
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

if (keyboard_check_pressed(ord("D"))) // quick debug jump
{
	room_goto(rm_prehistoric);
	global.immortality = true;
	global.noBuildCost = true;
	global.noMaxTowers = true;
}

// Eshwar Kanikanti 12/5/2024
// Skip tutorial level while testing
if (keyboard_check_pressed(ord("T")))
{
	room_goto(rm_map_choose);
}