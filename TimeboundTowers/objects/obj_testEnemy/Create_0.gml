// Evan Stark - November 13th 2024 - ITCS 4230 001
// Joining a new enemy instance to a path.

// Randomly choose between joining enemy to one of two paths.
// Might be a static pattern every time full game?
var _rand_path = random_range(0, 1);
show_debug_message(_rand_path);

if (_rand_path < 0.5) {
	path_start(path_prehistoric1, 5, path_action_stop, true);
}

else {
	path_start(path_prehistoric2, 5, path_action_stop, true);
}

image_speed = 0;
prev_x = x;
prev_y = y;