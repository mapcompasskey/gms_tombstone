///scr_player_movement_collision()

//
// Player Movement Collision Tests
//

// test movemvent collisions
scr_entity_check_collision_with_solids();
scr_entity_check_collision_with_tombstones();
scr_entity_check_collision_with_platforms();

// reset grounded
grounded = false;

// if the entity was falling
if (last_velocity_y > 0)
{
    var hit = 0;
    hit = max(entity_hit_solid_y, hit);
    hit = max(entity_hit_tombstone_y, hit);
    hit = max(entity_hit_platform_y, hit);
    
    // if the entity struck a surface
    if (hit)
    {
        grounded = true;
    }
}

