// Evan Stark - November 13th 2024 - ITCS 4230 001
// Dealing damage to the home base when enemy touches it.

// If immortality enabled, do not do damage.
if (global.immortality) {
	return;
}

// Else, deal damage.
health -= obj_testEnemy.damage_dealt;

// Home dies if health less than or equal to 0.
if (health <= 0) {
	instance_destroy(self);
}

// Destroy the enemy object.
instance_destroy(other);