///scr_entity_check_collision_with_platforms()

entity_hit_platform_y = false;

// if falling, check vertical collision against platform 1
if (my > 0)
{
    // if not already inside a platform 1
    if ( ! place_meeting(x + mx, y, obj_platform_1))
    {
        // check collision against the y-axis
        var collision_y = scr_entity_test_movement_collision(id, mx, my, obj_platform_1, 'y');
        if (collision_y[0])
        {
            my = collision_y[2];
            velocity_y = 0;
            entity_hit_platform_y = true;
        }
        collision_y = 0;
    }
}

// if falling, check vertical collision against platform 2
if (my > 0)
{
    // if not already inside a platform 2
    if ( ! place_meeting(x + mx, y, obj_platform_2))
    {
        var collision_y = scr_entity_test_movement_collision(id, mx, my, obj_platform_2, 'y');
        if (collision_y[0])
        {   
            my = collision_y[2];
            velocity_y = 0;
            entity_hit_platform_y = true;
        }
        collision_y = 0;
    }
}


