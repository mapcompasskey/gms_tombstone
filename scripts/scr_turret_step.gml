///scr_turret_step()

// if the player is infront of and within range of this instance
can_attack = false;
if (global.PLAYER)
{
    if (instance_exists(global.PLAYER))
    {
        if (facing == global.LEFT)
        {
            if (global.PLAYER.x < x)
            {
                if (distance_to_object(global.PLAYER) < proximity_distance)
                {
                    can_attack = true;
                }
            }
        }
        else if (facing == global.RIGHT)
        {
            if (global.PLAYER.x > x)
            {
                if (distance_to_object(global.PLAYER) < proximity_distance)
                {
                    can_attack = true;
                }
            }
        }
    }
}

// track the time between attacks
if (can_attack)
{
    attack_timer += global.TICK;
    if (attack_timer > attack_time)
    {
        attack_timer = 0;
        
        // get the bullet's starting position
        var pos_x = (x + (facing * 5));
        var pos_y = (y - (bbox_bottom - bbox_top) + 5);
        
        // create the bullet instance
        var bullet = instance_create(pos_x, pos_y, obj_bullet);
        with (bullet)
        {
            facing = other.facing;
            velocity_x = (speed_x * facing);
        }
        
    }
}

