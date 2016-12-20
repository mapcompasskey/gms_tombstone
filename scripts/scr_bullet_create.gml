///scr_bullet_create()

event_inherited();

// physics
gravity_factor = 0;

speed_x = 200;
speed_y = 0;

max_velocity_x = 0; //(speed_x * 2);
max_velocity_y = 0; //(speed_y * 2);

// collision
movement_collision_script = scr_bullet_movement_collision;

