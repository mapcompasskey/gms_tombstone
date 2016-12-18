///scr_door_create()

// The origin of the door's sprite needs to be center/bottom so the player is positioned correctly when exiting a door.

// drawing
image_index = 0;
image_speed = 0;

// collision
is_colliding_with = noone;


//
// Set Door Variables
//
// door_code: This door's unique identifier. Used to find where to start the player when the room with this door loads.
// exit_room_id: The id of the room to load.
// exit_door_code: The door_code to search for when entering a room.
//
// Example:
//  door_code = '1-01';
//  exit_room_id = rm_stage_2;
//  exit_door_code = '2-01';
//

door_code = '';
exit_room_id = noone;
exit_door_code = '';

