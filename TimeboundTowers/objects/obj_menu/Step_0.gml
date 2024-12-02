/// @description Merge Towers Functionality
// Evelyn Hosana - 12/2/24

if (instance_exists(obj_controller) && global.mergeButton) {
	if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, obj_tower)) {
        var tower = instance_position(mouse_x, mouse_y, obj_tower);
        if (tower != noone) {
            if (!drawTower) {
                // first click: pick up tower
                drawTower = true;
                pickedTowerSprite = tower.sprite_index;
                pickedTowerIndex = tower.image_index;
                instance_destroy(tower);
            } else if (drawTower) {
                // second click: attempt to merge
                if (tower.sprite_index == pickedTowerSprite && tower.image_index == pickedTowerIndex) {
                    // valid merge, destroy second tower and spawn upgraded tower
                    instance_destroy(tower);
                    var newTower = instance_create_layer(mouse_x, mouse_y, "Towers", obj_tower);
                    newTower.sprite_index = pickedTowerSprite;
                    newTower.image_index = pickedTowerIndex + 1;
                    drawTower = false; // reset draw state
					global.towerCount -= 1;
					newTower.upgradeTimer = room_speed * 3;
					newTower.shaderActive = true;
                } else {
                    // show warning: towers are not of same type
                    show_debug_message("Warning: Try merging towers of the same type!");
                }
            }
        }
    }
}