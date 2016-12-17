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

