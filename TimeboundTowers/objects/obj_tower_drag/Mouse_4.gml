/// @description Testing click and place towers
// Eshwar Kanikanti 11/13/24
instance_destroy();

// Evan Stark - November 15th 2024 - ITCS 4230 001
// Using Eshwar's original code, made tower placement work using Phil's functions
// in obj_controller.

// Only place if controller exists.
// TO-DO: need function to decide if tokens should be used over credits instead
// of fixed false value.
if (instance_exists(obj_controller)) {
	obj_controller.PlaceTower(mouse_x, mouse_y, "Towers", obj_tower);
	obj_controller.ChargeMoney(cost, false);
}


/* Original code by Eshwar Kanikanti.

if (global.credits >= cost 
	&& !position_meeting(mouse_x, mouse_y, obj_block) 
	&& !position_meeting(mouse_x, mouse_y, obj_tower)) {
	if (global.noBuildCost = false) {
		global.credits -= cost;
	}
	instance_create_depth(mouse_x, mouse_y, -1, obj_tower);
} */