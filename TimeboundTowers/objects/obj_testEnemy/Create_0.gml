/// @description Start Path and Set Particles
// Evelyn Hosana - 12/3/2024

image_speed = 0;

// start path
path_start(path_tutorial, 1, path_action_stop, true);

// check if obj_tutorial exists
var tutorial_instance = instance_find(obj_tutorial, 0);

if (instance_exists(tutorial_instance)) {
    // check if obj_tutorial is in SPAWN_FINAL_ENEMY state
    if (tutorial_instance.current_state == TutorialState.SPAWN_FINAL_ENEMY) {
        // check if this is first instance of obj_testEnemy
        if (instance_number(obj_testEnemy) == 1) {
            has_particle_effect = true;
            shimmer_effect = part_system_create(ps_shimmer);
        } else {
            has_particle_effect = false;
        }
    } else {
        has_particle_effect = false;
    }
} else {
    has_particle_effect = false;
}