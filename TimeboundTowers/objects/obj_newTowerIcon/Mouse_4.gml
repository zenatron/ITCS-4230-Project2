// Evan Stark - November 6th 2024 - ITCS 4230 001
// Create new tower in random position when left mouse button clicked.
instance_create_layer(test_tower_position_x, test_tower_position_y, "Instances", obj_tower);
// After each tower made, create new random coordinates.
test_tower_position_x = random(1000)
test_tower_position_y = random(750)