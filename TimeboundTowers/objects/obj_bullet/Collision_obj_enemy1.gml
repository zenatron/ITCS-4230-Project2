// Evan Stark - November 13th 2024
// Bullet does damage to enemy and destroys itself.

// double final outcome damage based on powerup
if (global.double_damage) { damage *= 2; }

other.enemyHealth -= damage;
instance_destroy(self);