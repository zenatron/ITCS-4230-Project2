/// @description Testing click and place towers
// Eshwar Kanikanti 11/13/24
instance_destroy();
if (global.credits >= cost 
	&& !position_meeting(mouse_x, mouse_y, obj_block) 
	&& !position_meeting(mouse_x, mouse_y, obj_tower)) {
	global.credits -= cost;
	instance_create_depth(mouse_x, mouse_y, -1, obj_tower);
}