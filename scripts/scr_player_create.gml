///scr_player_create()

event_inherited();

// update global
global.PLAYER = id;

speed_x = 2;
speed_y = 4;

max_velocity_x = (speed_x * 2);
max_velocity_y = (speed_y * 2);

scale_x = 1.0;
scale_y = 1.0;

image_speed = 0;
sprite_index = spr_player_idle;
mask_index = spr_player_mask;

