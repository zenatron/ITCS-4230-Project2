/// @description Additional Room Checks
// Evelyn Hosana 11/12/2024

var c_width = display_get_width();
var c_height = display_get_height();

if (room == rm_main_menu) {
	var button_x = (c_width / 2) - 680;
	var button_y = (c_height / 2) + 315;
	// spawn 5 option buttons
	for (var i = 0; i < 5; i++) {
		var new_button = instance_create_layer(button_x, button_y - (i * 110), "Buttons", obj_button);
		new_button.button_id = i + 1;
	}
} else if (room == rm_map_choose) {
	var button_x = (c_width / 2) - 300;
	var button_y = (c_height / 2) + 300;
	for (var i = 0; i < 3; i++) {
		var new_button = instance_create_layer(button_x + (i * 110), button_y, "Buttons", obj_button);
		new_button.button_id = i + 1;
	}
}