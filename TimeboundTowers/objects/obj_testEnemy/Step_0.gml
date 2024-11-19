// Evan Stark - 11/13/2024
// Destroy enemy if health <= 0.

if(enemyHealth <= 0) {
	global.credits += credits_given;
	instance_destroy(self);
}

if (x > prev_x) {
    image_index = 2; // face right
	image_xscale = -1;
} else if (x < prev_x) {
    image_index = 2; // face left
	image_xscale = 1;
} else if (y > prev_y) {
    image_index = 1; // face down
} else if (y < prev_y) {
    image_index = 0; // face up
}
// update previous position for next step
prev_x = x;
prev_y = y;