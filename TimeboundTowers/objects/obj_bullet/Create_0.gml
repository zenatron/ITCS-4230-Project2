/// @description Change Damage Based on Tower
// Evelyn Hosana - 11/28/24

damage = 15;

// check if obj tower exists
if (instance_exists(obj_tower)) {
	// loop through all instances
	with (obj_tower) {
		if (image_index == 0) { damage = 15; } // tower 1
		else if (image_index == 1) { damage = 15 * 2; } // tower 1: upgraded
		else if (image_index == 2) { damage = 30; } // tower 2
		else if (image_index == 3) { damage = 30 * 2; } // tower 2: upgraded
		else if (image_index == 4) { damage = 45; } // tower 3
		else if (image_index == 5) { damage = 45 * 2; } // tower 3: upgraded
		else if (image_index == 6) { damage = 60; } // tower 4
		else if (image_index == 7) { damage = 60 * 2; } // tower 4: upgraded
	}
}