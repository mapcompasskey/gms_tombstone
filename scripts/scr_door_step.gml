///scr_door_step()

// highlight door if colliding with the player
image_index = 0;
if (is_colliding_with != noone)
{
    image_index = 1;
    is_colliding_with = noone;
}

