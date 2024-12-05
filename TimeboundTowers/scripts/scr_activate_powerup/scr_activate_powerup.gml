/// @function scr_activate_powerup(powerup_type, duration)
/// @description Activates Specified Powerup for Player
/// @param powerup_type - type of powerup to set
/// @param duration - lasting time for powerup
// Evelyn Hosana - 12/2/24
function scr_activate_powerup(powerup_type, duration){
	// activate appropriate powerup
	switch (powerup_type) {
	    case "double_damage":
	        global.double_damage = true;
	        alarm[0] = duration * room_speed; // timer to deactivate
	        show_debug_message("Double Damage activated for " + string(duration) + " seconds!");
	        break;
        
	    case "faster_attack":
	        global.faster_attack = true;
	        alarm[1] = duration * room_speed;
	        show_debug_message("Faster Attack activated for " + string(duration) + " seconds!");
	        break;
        
	    case "slow_enemies":
	        global.slow_enemies = true;
	        alarm[2] = duration * room_speed;
	        show_debug_message("Slow Enemies activated for " + string(duration) + " seconds!");
	        break;
        
	    case "road_block":
	        global.road_block = true;
			if (room == rm_prehistoric) { instance_create_layer(1750, 710, "Enemies", obj_roadBlock); }
			if (room == rm_medieval) { instance_create_layer(760, 940, "Enemies", obj_roadBlock); }
			if (room == rm_modern) { instance_create_layer(35, 145, "Enemies", obj_roadBlock); }
	        alarm[3] = duration * room_speed;
	        show_debug_message("Road Block activated for " + string(duration) + " seconds!");
	        break;
	}
}