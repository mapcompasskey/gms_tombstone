///scr_player_step()

event_inherited();

//
// Check if jumping and/or falling
//
if ( ! dying && ! hurting)
{
    // if grounded and just pressed the JUMP button
    if (grounded && ! jumping && global.PLAYER_KEY_JUMP_PRESSED)
    {
        jumping = true;
        grounded = false;
        velocity_y = -speed_y;
    }
    
    /**/
    // if pressed the JUMP button while jumping
    if (jumping && global.PLAYER_KEY_JUMP_PRESSED)
    {
        jumping = true;
        falling = false;
        grounded = false;
        velocity_y = -speed_y;
    }
    /**/
    
    // reduce jump height
    if (jumping && velocity_y < 0 && global.PLAYER_KEY_JUMP_RELEASED)
    {
        velocity_y = (velocity_y / 2);
    }
    
    // if falling
    if (velocity_y > 0 && ! grounded)
    {
        falling = true;
    }
    
    // if grounded after jumping or falling
    if ((jumping || falling) && grounded)
    {
        jumping = false;
        falling = false;
    }
}


//
// Check if walking
//
if ( ! dying && ! hurting)
{
    walking = false;
    velocity_x = 0;
     
    if (global.PLAYER_KEY_LEFT)
    {
        facing = global.LEFT;
        walking = true;
        velocity_x = (speed_x * facing);
    }
    else if (global.PLAYER_KEY_RIGHT)
    {
        facing = global.RIGHT;
        walking = true;
        velocity_x = (speed_x * facing);
    }
}


//
// Check if colliding with a Door
//
if (place_meeting(x, y, obj_door))
{
    // get the door
    var door = instance_place(x, y, obj_door);
    if (door != noone)
    {
        with (door)
        {
            if (exit_door_code != '' && exit_room_id != noone)
            {
                // highlight the door
                is_colliding_with = other.id
                
                // if the Up key is released
                if (global.PLAYER_KEY_UP_RELEASED)
                {
                    // clear all inputs
                    global.PLAYER_KEY_UP_RELEASED = false;
                    io_clear();
                    
                    // check if the room exist
                    if (room_exists(exit_room_id))
                    {
                        // update globals
                        global.PREVIOUS_DOOR_CODE = global.CURRENT_DOOR_CODE;
                        global.PREVIOUS_ROOM_ID = global.CURRENT_ROOM_ID;
                        global.CURRENT_DOOR_CODE = exit_door_code;
                        global.CURRENT_ROOM_ID = exit_room_id;
                        
                        // switch rooms
                        room_goto(exit_room_id);
                    }
                }
            }
            
        }
    }
    
}


//
// Check if colliding with spikes
//
if ( ! dying && ! hurting)
{
    if (place_meeting(x, y, obj_spike))
    {
        dying = true;
        create_tombstone = true;
    }
}


//
// Check if colliding with npcs
//
if ( ! dying && ! hurting)
{
    if (place_meeting(x, y, obj_npc))
    {
        dying = true;
        create_tombstone = true;
    }
}


//
// Check if colliding with bullets
//
if ( ! dying && ! hurting)
{
    if (place_meeting(x, y, obj_bullet))
    {
        dying = true;
        create_tombstone = true;
    }
}


//
// Create a tombstone
//
if (create_tombstone)
{
    create_tombstone = false;
    
    var pos_x = x;
    var pos_y = (y - 1);
    
    // round the x/y to the neartest tile
    pos_x = (pos_x - (pos_x % global.TILE_SIZE));
    pos_y = (pos_y - (pos_y % global.TILE_SIZE));
    
    // create a tombstone object
    instance_create(pos_x, pos_y, obj_tombstone);    
}


//
// If dying
//
if (dying)
{
    visible = false;
    
    restart_timer += global.TICK;
    if (restart_timer > restart_time)
    {
        dying = false;
        visible = true;
        
        // reposition the player
        x = start_x;
        y = start_y;
        
        // move towards the player
        scr_camera_update(x, y, false);
        
        // reset timer
        restart_timer = 0;
    }
}

