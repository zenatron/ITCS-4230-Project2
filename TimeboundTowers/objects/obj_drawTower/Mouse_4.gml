/// @description Place Tower and Take Credits
// Evelyn Hosana 11/19/2024

// Referencing Eshwar's implementation:
if instance_exists(obj_controller) {
	if (image_index == 0 && obj_controller.IsValidPlacement(mouse_x, mouse_y)) {
	    obj_controller.PlaceTower(mouse_x, mouse_y, "Towers", obj_tower); // Phil's placing tower function
	    var placed_tower = instance_nearest(mouse_x, mouse_y, obj_tower); // get placed tower
	    placed_tower.image_index = image_index; // set sprite index
		// Charge money for red tower
	    obj_controller.ChargeMoney(50, false); // Phil's charge credits function
	    instance_destroy(); // destroy temporary drawTower instance
	} else if (image_index == 2 && obj_controller.IsValidPlacement(mouse_x, mouse_y)) {
	    obj_controller.PlaceTower(mouse_x, mouse_y, "Towers", obj_tower);
	    var placed_tower = instance_nearest(mouse_x, mouse_y, obj_tower);
	    placed_tower.image_index = image_index;
		// Charge money for green tower
	    obj_controller.ChargeMoney(125, false);
	    instance_destroy();
	} else if (image_index == 4 && obj_controller.IsValidPlacement(mouse_x, mouse_y)) {
	    obj_controller.PlaceTower(mouse_x, mouse_y, "Towers", obj_tower);
	    var placed_tower = instance_nearest(mouse_x, mouse_y, obj_tower);
	    placed_tower.image_index = image_index;
		// Charge money for blue tower
	    obj_controller.ChargeMoney(250, false);
	    instance_destroy();
	} else if (image_index == 6 && obj_controller.IsValidPlacement(mouse_x, mouse_y)) {
	    obj_controller.PlaceTower(mouse_x, mouse_y, "Towers", obj_tower);
	    var placed_tower = instance_nearest(mouse_x, mouse_y, obj_tower);
	    placed_tower.image_index = image_index;
		// Charge money for purple tower
	    obj_controller.ChargeMoney(400, false);
	    instance_destroy();
	} else {
	    instance_destroy(); // destroy instance if no conditions are met
	}
	audio_play_sound(snd_tower_place, 0, false);
}