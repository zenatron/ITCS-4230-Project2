// Evan Stark - 11/13/2024
// Destroy enemy if health <= 0.

if(enemyHealth <= 0) {
	global.credits += credits_given;
	instance_destroy(self);
}
