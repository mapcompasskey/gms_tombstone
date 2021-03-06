///scr_entity_check_collision_with_tombstones()

entity_hit_tombstone_x = false;
entity_hit_tombstone_y = false;

// if moving on the x or y axis
if (mx != 0 || my != 0)
{
    // if not already inside an object
    if ( ! place_meeting(x, y, obj_tombstone))
    {
        // check collision against the x-axis
        var collision_x = scr_entity_test_movement_collision(id, mx, my, obj_tombstone, 'x');
        if (collision_x[0])
        {
            mx = collision_x[1];
            velocity_x = 0;
            entity_hit_solid_x = true;
        }
        collision_x = 0;
        
        // check collision against the y-axis
        var collision_y = scr_entity_test_movement_collision(id, mx, my, obj_tombstone, 'y');
        if (collision_y[0])
        {
            my = collision_y[2];
            velocity_y = 0;
            entity_hit_solid_y = true;
        }
        collision_y = 0;
    }
}

