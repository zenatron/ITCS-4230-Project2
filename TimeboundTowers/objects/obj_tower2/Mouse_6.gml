// Evan Stark - November 6th 2024 - ITCS 4230 001
// Testing deleting/"selling" a tower when left mouse button clicked.
global.towerCount -= 1;
instance_destroy(self);
global.credits += obj_tower_click2.cost/2