/// @description Initialize Tutorial
// Evelyn Hosana - 12/3/24

// define tutorial states
enum TutorialState {
    DIALOG_1, DIALOG_2, DIALOG_3, DIALOG_4, DIALOG_5,
    SPAWN_ENEMY, CHECK_ENEMY_DEFEAT, DIALOG_6, DIALOG_7, DIALOG_8,
    CHECK_SELL, DIALOG_9, DIALOG_10, DIALOG_11,
    CHECK_MERGE, SPAWN_FINAL_ENEMY, DIALOG_12, DIALOG_13,
    CHECK_FINAL_WAVE, DIALOG_14, COMPLETE
}

// initialize variables
current_state = TutorialState.DIALOG_1;
dialog_text = "Welcome to Timebound Towers' Tutorial!";
cont = "Press 'Enter' to Continue";
show_dialog = true;

check_timer = 0; // for delayed actions