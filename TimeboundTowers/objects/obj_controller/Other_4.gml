/// @description Background music for rooms
// Eshwar Kanikanti 12/5/2024
if (room == rm_tutorial) {
	audio_play_sound(snd_tutorial_music, 0, true)
	global.credits = 1000
} else if (room == rm_medieval || room == rm_modern || room == rm_prehistoric) {
	audio_play_sound(snd_level_music, 0, true)
} else if (room == rm_main_menu || room == rm_map_choose) {
	audio_play_sound(snd_menu_music, 0, true)
}