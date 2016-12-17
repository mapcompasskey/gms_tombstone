///scr_npc_movement_collision()

//scr_entity_movement_collision();

// test movemvent collisions
scr_entity_check_collision_with_solids();
scr_entity_check_collision_with_platforms();
scr_entity_check_collision_with_npc_walls();

// reset grounded
grounded = false;

// if the entity was falling
if (last_velocity_y > 0)
{
    // if the entity struck a surface
    if (entity_hit_solid_y || entity_hit_platform_y || entity_hit_npc_wall_y)
    {
        grounded = true;
    }
}

// if the entity is walking
if (last_velocity_x != 0)
{
    // if the entity struck a surface
    if (entity_hit_solid_x || entity_hit_npc_wall_x)
    {
        key_left = !key_left;
        key_right = !key_right;
    }
    else
    {
        /*
        // test if the entity has reached a surface's edge
        scr_entity_check_edge_of_solids();
        scr_entity_check_edge_of_platforms();
        
        if (entity_at_edge_of_solid || entity_at_edge_of_platform)
        {
            key_left = !key_left;
            key_right = !key_right;
        }
        */
    }
}

