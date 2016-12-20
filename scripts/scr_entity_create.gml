///scr_entity_create()

// physics
has_physics = true;

gravity_factor = 1;

mx = 0;
my = 0;

speed_x = 2;
speed_y = 4;

velocity_x = 0;
velocity_y = 0;

last_velocity_x = 0;
last_velocity_y = 0;

max_velocity_x = (speed_x * 2);
max_velocity_y = (speed_y * 2);

move_friction = 0;     // 0.9 - reduce by 10% every step
move_friction_min = 0; // 1   - if less than 1
jump_bounce = 0;       // 0.4 - reduce by 60% every bounce
jump_bounce_min = 0;   // 1   - if less than 1

// collision
entity_hit_solid_x = false;
entity_hit_solid_y = false;
entity_hit_tombstone_x = false;
entity_hit_tombstone_y = false;
entity_hit_platform_y = false;
entity_hit_npc_wall_x = false;
entity_hit_npc_wall_x = false;
entity_at_edge_of_solid = false;
entity_at_edge_of_platform = false;

movement_collision_script = scr_entity_movement_collision;

// states
grounded = false;

dying = false;
hurting = false;
walking = false;
jumping = false;
falling = false;

// drawing
facing = global.RIGHT;
scale_x = 1.0;
scale_y = 1.0;

image_speed = 0;
//sprite_index = noone;
//mask_index = noone;

// inputs
key_left = false;
key_right = false;
key_up = false;
key_down = false;

