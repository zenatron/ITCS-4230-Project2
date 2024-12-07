/// @description Wave spawning cooldown until wave reaches 15.
// Evan Stark - December 6th 2024 - ITCS 4230 001
if (global.waveCounter <= 15) {
	instance_create_layer(250
	, 1000, "Buttons", obj_waveButton);	// New wave start button.
}

if (global.waveCounter >= 15) {
	room_goto(rm_victory);
	audio_play_sound(snd_victory, 0, false);
}