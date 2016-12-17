///scr_npc_step()

event_inherited();

/*
if ( ! dying && ! hurting)
{
    action_timer += global.TICK;
    if (action_timer > action_time)
    {
        action_timer = 0;
        action_time = (random_range(2, 4) * 60);
        
        key_left = false;
        key_right = false;
        var rand = irandom(4);
        show_debug_message(rand);
        switch (rand)
        {
            case 0:
            case 1:
                key_left = true;
                break;
                
            case 2:
            case 3:
                key_right = true;
                break;
        }
    }
}
*/

// check if walking
if ( ! dying && ! hurting)
{
    walking = false;
    velocity_x = 0;
     
    if (key_left)
    {
        facing = global.LEFT;
        walking = true;
        velocity_x = (speed_x * facing);
    }
    else if (key_right)
    {
        facing = global.RIGHT;
        walking = true;
        velocity_x = (speed_x * facing);
    }
}

