/// @description Select Sprite Base Type
// Evelyn Hosana - 12/4/2024

image_speed = 0;

if (room != rm_tutorial) {
	sprite_index = spr_home;
	if (room == rm_prehistoric) { image_index = 2; }
	if (room == rm_medieval) { image_index = 0; }
	if (room == rm_modern) { image_index = 1; }
} else {
	sprite_index = spr_tutorial_home;
	image_speed = 0
	image_index = 0;
}