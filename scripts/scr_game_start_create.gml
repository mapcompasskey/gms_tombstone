///scr_game_start_create()

// this object must be persistent
if ( ! persistent)
{
    persistent = true;
}

//
// Define Global Variables
//

// PLAYER - the instance id of the player
// RIGHT - used when calculating the x speed of entities
// LEFT - used when calculating the x speed of entities
// TICK - the amount of time that has passed since the last step
// GRAV - the gravity
// ROOM_SPEED - the speed of the first room (ie: 30, 60)

global.PLAYER = noone;
global.RIGHT = 1;
global.LEFT = -1;
global.TICK = 1;
global.GRAV = 0.2;
global.ROOM_SPEED = room_speed;

// input keys to listen for
// *set as globals so they can be remapped
global.KEY_LEFT = vk_left;
global.KEY_RIGHT = vk_right;
global.KEY_UP = vk_up;
global.KEY_DOWN = vk_down;
global.KEY_JUMP = ord("X");
//global.KEY_ATTACK_1 = ord("Z");
//global.KEY_ATTACK_2 = ord("X");
global.KEY_ESCAPE = vk_escape;
global.KEY_ENTER = vk_enter;

// player inputs
// *set as globals so other object can detect and reset
global.PLAYER_KEY_LEFT = false;
global.PLAYER_KEY_RIGHT = false;
global.PLAYER_KEY_UP = false;
global.PLAYER_KEY_DOWN = false;
global.PLAYER_KEY_JUMP_PRESSED = false;
global.PLAYER_KEY_JUMP_RELEASED = false;
//global.PLAYER_KEY_ATTACK_1 = false;
//global.PLAYER_KEY_ATTACK_2 = false;


//
// Update Every Room's Dimensions
//
// This is an easy way to dynamically update all the rooms to match when the final
// game's width and height is undetermined.
//

// enabled and set the size of every room's view/port to the size of the first room
var view_width = view_wview[0];
var view_height = view_hview[0];
var bg_color = make_color_rgb(20, 12, 28); // dark purple

var more_rooms = true;
var rm = room_next(room);
while (more_rooms)
{
    room_set_view(rm, 0, true, 0, 0, view_width, view_height, 0, 0, view_width, view_height, 0, 0, -1, -1, -1);
    room_set_view_enabled(rm, true);
    room_set_background_colour(rm, bg_color, true);
    if (rm == room_last)
    {
        more_rooms = false;
    }
    else
    {
        rm = room_next(rm);
    }
}

