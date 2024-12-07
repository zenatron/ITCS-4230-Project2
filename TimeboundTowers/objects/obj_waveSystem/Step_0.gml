/// @description Calling the wave spawn script.
// Evan Stark - December 6th 2024 - ITCS 4230 001

// 45 seconds to wait to spawn the next wave.
if (global.waveActive) {
	global.waveActive = false;
	alarm[0] = room_speed * 20;
	
	global.waveCounter += 1;
	
	// Start enemy spawning interval.
	// Higher wave number = more enemies.
	alarm[1] = 1;
}