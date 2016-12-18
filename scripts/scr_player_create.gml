///scr_player_create()

event_inherited();

// update global
global.PLAYER = id;

speed_x = 100;
speed_y = 200;

max_velocity_x = 0; //(speed_x * 2);
max_velocity_y = 0; //(speed_y * 2);

scale_x = 1.0;
scale_y = 1.0;

start_x = 0;
start_y = 0;
restart_time = 0.5;
restart_timer = 0;

image_speed = 0;
sprite_index = spr_player_idle;
mask_index = spr_player_mask;

