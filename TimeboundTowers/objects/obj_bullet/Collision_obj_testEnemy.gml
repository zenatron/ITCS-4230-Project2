// Evan Stark - November 13th 2024
// Bullet does damage to enemy and destroys itself.

other.health -= 10;
instance_destroy(self);

// Eshwar Kanikanti 11/13/24
// Enemy destroys itself when health is 0
if (other.health <= 0) {
	instance_destroy(other);
}