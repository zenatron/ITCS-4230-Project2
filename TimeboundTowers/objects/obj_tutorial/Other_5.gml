/// @description Destroy Object and Set Default Values
// Evelyn Hosana - 12/4/24

global.credits = 200;
global.tokens = 0;
global.menuToggle = false; // set back to tower purchase
if (instance_exists(obj_tower)) {
	instance_destroy(obj_tower);
	global.towerCount = 0;
}
instance_destroy(self);

// Eshwar Kanikanti 12/5/2024
// Stop background music after exiting room
audio_stop_sound(snd_tutorial_music)