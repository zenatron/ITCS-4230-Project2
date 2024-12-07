/// @description Destroy Road Block
// Evelyn Hosana - 12/2/24

life_timer++;
if (life_timer >= duration) {
    instance_destroy(); // destroy after duration
}