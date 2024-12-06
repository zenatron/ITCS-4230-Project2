/// @description Shader Activity
// Evelyn Hosana - 12/2/24

if (shaderActive) {
	upgradeTimer -= 1;
	if (upgradeTimer <= 0) {
		shaderActive = false;
	}
}