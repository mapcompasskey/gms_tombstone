///scr_player_step()

event_inherited();

// check if jumping and/or falling
if ( ! hurting && ! dying)
{
    // if grounded and just pressed the JUMP button
    if (grounded && ! jumping && global.PLAYER_KEY_JUMP_PRESSED)
    {
        jumping = true;
        grounded = false;
        velocity_y = -speed_y;
    }
    
    // if pressed the JUMP button while jumping
    if (jumping && global.PLAYER_KEY_JUMP_PRESSED)
    {
        jumping = true;
        falling = false;
        grounded = false;
        velocity_y = -speed_y;
    }
    
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

// check if walking
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

// check if colliding with spikes
if ( ! dying && ! hurting)
{
    if (place_meeting(x, y, obj_spike))
    {
        dying = true;
        
        var pos_x = x;
        var pos_y = y;
        
        pos_x = (pos_x - (pos_x % global.TILE_SIZE));
        pos_y = (pos_y - (pos_y % global.TILE_SIZE));
        
        instance_create(pos_x, pos_y, obj_wall);
    }
}

// if dying
if (dying)
{
    dying = false;
    
    // reposition the player
    x = start_x;
    y = start_y;
    
    // move towards the player
    scr_camera_update(x, y, false);
}



