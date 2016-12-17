///scr_entity_movement_collision

//
// Default Entity Movement Collision Tests
//

// test movemvent collisions
scr_entity_check_collision_with_solids();
scr_entity_check_collision_with_platforms();

// reset grounded
grounded = false;

// if the entity was falling
if (last_velocity_y > 0)
{
    // if the entity struck a surface
    if (entity_hit_solid_y || entity_hit_platform_y)
    {
        grounded = true;
    }
}

