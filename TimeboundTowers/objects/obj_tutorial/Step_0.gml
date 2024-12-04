/// @description Set Dialog and Action Events
// Evelyn Hosana - 12/4/24

if (keyboard_check_pressed(vk_enter)) {
    switch (current_state) {
        case TutorialState.DIALOG_1:
            dialog_text = "Timebound Towers is a tower defense game with unique mechanics-- in here you'll learn the basics of how to play.";
            current_state = TutorialState.DIALOG_2;
            break;
        case TutorialState.DIALOG_2:
            dialog_text = "Notice important stats in the upper left corner like credits, tokens, and health.";
            current_state = TutorialState.DIALOG_3;
            break;
        case TutorialState.DIALOG_3:
            dialog_text = "On the upper right, you can see your general buy menu with all the tools you need. Protect your base by defeating all enemies.";
            current_state = TutorialState.DIALOG_4;
            break;
        case TutorialState.DIALOG_4:
            dialog_text = "Let's start by purchasing a tower! Use your mouse and left click a tower you can afford, then left click again to place it outside the enemy path.";
            current_state = TutorialState.DIALOG_5;
            break;
        case TutorialState.DIALOG_5:
            show_dialog = false; // hide dialog
            current_state = TutorialState.SPAWN_ENEMY;
            break;
        case TutorialState.DIALOG_6:
            dialog_text = "Now that you know how to place a tower, we can move onto selling. Selling can be useful to gain back credits for a better tower or if you reached max tower capacity.";
            current_state = TutorialState.DIALOG_7;
            break;
        case TutorialState.DIALOG_7:
            show_dialog = false; // hide dialog
            current_state = TutorialState.CHECK_SELL;
            break;
        case TutorialState.DIALOG_8:
            dialog_text = "Similar to the sell button, let's try merging towers.";
            current_state = TutorialState.DIALOG_9;
            break;
        case TutorialState.DIALOG_9:
            dialog_text = "Defend your base with either 2 red-gemmed towers or 2 green-gemmed towers, enter merge mode, then click on a tower to drag and merge to another tower.";
            current_state = TutorialState.DIALOG_10;
            break;
        case TutorialState.DIALOG_10:
            show_dialog = false; // hide dialog
            current_state = TutorialState.CHECK_MERGE;
            break;
        case TutorialState.DIALOG_11:
            dialog_text = "There are special enemies that can drop 'tokens.' These tokens can be used to purchase various, temporary powerups.";
            current_state = TutorialState.DIALOG_12;
            break;
		case TutorialState.DIALOG_12:
			dialog_text = "Try defeating this specialized enemy, and choose one of four powerup options to help you! In this tutorial, use either double damage or double speed."
			current_state = TutorialState.DIALOG_13;
			break;
		case TutorialState.DIALOG_13:
            show_dialog = false; // hide dialog
            current_state = TutorialState.SPAWN_FINAL_ENEMY;
            break;
        case TutorialState.DIALOG_14:
            room_goto(rm_map_choose);
            break;
    }
}

// check state-based actions
switch (current_state) {
    case TutorialState.SPAWN_ENEMY:
        instance_create_layer(-64, 750, "Enemies", obj_testEnemy);
        current_state = TutorialState.CHECK_ENEMY_DEFEAT;
        break;
    case TutorialState.CHECK_ENEMY_DEFEAT:
        if (!instance_exists(obj_testEnemy)) {
			show_dialog = true;
			dialog_text = "Good job! Each tower varies with unique combinations of damage and speed; be sure to find the combination that works for you.";
            current_state = TutorialState.DIALOG_6;
        }
        break;
    case TutorialState.CHECK_SELL:
        if (global.sold) {
			global.sellButton = false;
            show_dialog = true;
            dialog_text = "Great! Now that you can sell, you can also merge towers to save space AND upgrade to a better tower.";
            current_state = TutorialState.DIALOG_9;
        }
        break;
    case TutorialState.CHECK_MERGE:
        if (instance_exists(obj_tower) && (obj_tower.image_index == 1 || obj_tower.image_index == 3)) {
			check_timer++;
			global.mergeButton = false;
			if (check_timer == room_speed * 2) { instance_create_layer(-64, 750, "Enemies", obj_testEnemy); }
			if (check_timer >= room_speed * 5 && !instance_exists(obj_testEnemy)) {
				check_timer = 0; // reset timer
				show_dialog = true;
				dialog_text = "Last thing! Sometimes there might be too many enemies for the towers themselves to handle.";
				current_state = TutorialState.DIALOG_11;
			}
        }
		break;
    case TutorialState.SPAWN_FINAL_ENEMY:
        check_timer++;
        if (check_timer == room_speed * 2) {
            instance_create_layer(-64, 750, "Enemies", obj_testEnemy);
        } else if (check_timer == room_speed * 6) {
			instance_create_layer(-64, 750, "Enemies", obj_testEnemy);
		} else if (check_timer >= room_speed * 8) {
			instance_create_layer(-64, 750, "Enemies", obj_testEnemy);
			check_timer = 0; // reset timer
			current_state = TutorialState.CHECK_FINAL_WAVE;
		}
        break;
    case TutorialState.CHECK_FINAL_WAVE:
		if (!instance_exists(obj_testEnemy) && (global.double_damage || global.faster_attack)) {
			global.double_damage = false;
			global.faster_attack = false;
			show_dialog = true;
	        dialog_text = "Congragulations! You have finished the tutorial. You may now move on to play Timebound Towers!";
	        current_state = TutorialState.DIALOG_14;
        }
        break;
}