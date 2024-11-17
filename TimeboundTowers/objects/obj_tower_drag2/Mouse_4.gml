/// @description Testing click and place towers
// Eshwar Kanikanti 11/13/24
instance_destroy();

// Evan Stark - November 15th 2024 - ITCS 4230 001
// Using Eshwar's code, implemented obj_controller's tower placing functions.

// Only do functions if obj_controller exists.
if (instance_exists(obj_controller)) {
	obj_controller.PlaceTower(mouse_x, mouse_y, "Towers", obj_tower2);
	obj_controller.ChargeMoney(cost, false);
}

/* Eshwar's code

if (global.credits >= cost 
	&& !position_meeting(mouse_x, mouse_y, obj_block) 
	&& !position_meeting(mouse_x, mouse_y, obj_tower2)) {
	if (global.noBuildCost = false) {
		global.credits -= cost;
	}
	instance_create_depth(mouse_x, mouse_y, -1, obj_tower2);
} */