/// @description Ensure Proper Damage Settings

// check if obj tower exists

if (instance_exists(obj_tower)) {
	// loop through all instances
	with (obj_tower) {
		// Eshwar Kanikanti 12/5/2024
		// Testing color of bullet (bullet damage needs fixing)
		if (image_index == 0) { global.damage = 15; obj_bullet.image_index = 0;  } // tower 1
		else if (image_index == 1) { global.damage = 15 * 2; obj_bullet.image_index = 1; } // tower 1: upgraded
		else if (image_index == 2) { global.damage = 30; obj_bullet.image_index = 2; } // tower 2
		else if (image_index == 3) { global.damage = 30 * 2; obj_bullet.image_index = 3; } // tower 2: upgraded
		else if (image_index == 4) { global.damage = 45; obj_bullet.image_index = 4; } // tower 3
		else if (image_index == 5) { global.damage = 45 * 2; obj_bullet.image_index = 5; } // tower 3: upgraded
		else if (image_index == 6) { global.damage = 60; obj_bullet.image_index = 6; } // tower 4
		else if (image_index == 7) { global.damage = 60 * 2; obj_bullet.image_index = 6; } // tower 4: upgraded
	}
}