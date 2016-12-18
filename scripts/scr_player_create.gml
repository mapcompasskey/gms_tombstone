///scr_player_create()

event_inherited();

// update global
global.PLAYER = id;

// physics
speed_x = 100;
speed_y = 160;

max_velocity_x = 0; //(speed_x * 2);
max_velocity_y = 0; //(speed_y * 2);

// collision
movement_collision_script = scr_player_movement_collision;

// states
create_tombstone = false;

// drawing
image_speed = 0;
sprite_index = spr_player_idle;
mask_index = spr_player_mask;

// positioning
start_x = 0;
start_y = 0;
restart_time = 0.5;
restart_timer = 0;

