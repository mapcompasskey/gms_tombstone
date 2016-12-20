///scr_bullet_movement_collision()

//
// Bullet Movement Collision Tests
//

// test movemvent collisions
scr_entity_check_collision_with_solids();

// if the entity struck a surface
if (entity_hit_solid_x)
{
    instance_destroy();
}

