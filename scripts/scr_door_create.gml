///scr_door_create()

// The origin of the door's sprite needs to be center/bottom so the player is positioned correctly when exiting a door.

is_colliding_with = noone;

// This door's unique identifier. Used to find where to start the player when the room with this door loads.
door_code = '';

// The id of the room to load.
exit_room_id = noone;

// The door_code to search for when entering a room.
exit_door_code = '';

// Example:
// door_code = '1-01'; // room 1, door 01
// exit_room_id = rm_stage_2;
// exit_door_code = '2-01'; // room 2, door 01

