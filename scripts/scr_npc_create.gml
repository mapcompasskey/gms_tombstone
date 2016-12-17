///scr_npc_create()

event_inherited();

// physics
speed_x = 1;
speed_y = 3;

max_velocity_x = (speed_x * 2);
max_velocity_y = (speed_y * 2);

// collision
movement_collision_script = scr_npc_movement_collision;

// drawing
scale_x = 1.0;
scale_y = 1.0;

image_speed = 0;
sprite_index = spr_npc_idle;
mask_index = spr_npc_mask;

// inputs
//action_time = (random_range(2, 4) * 60) // 2 - 4 seconds
//action_timer = action_time;
key_right = true;

