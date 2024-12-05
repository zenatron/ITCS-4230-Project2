///@description Alarm Definitions for Powerup Functionality
// Evelyn Hosana - 12/2/24

alarm[0] = -1; // double damage
alarm[1] = -1; // faster attack
alarm[2] = -1; // slow enemies
alarm[3] = -1; // road block
powerup_active = false;

// adjusted bounds based on sprite origin
left = x - sprite_xoffset;
right = x - sprite_xoffset + sprite_width;
top = y - sprite_yoffset;
bottom = y - sprite_yoffset + sprite_height;

menu_active = false;
menu_type = "";