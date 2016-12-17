///scr_entity_check_edge_of_solids()

entity_at_edge_of_solid = false;

// if grounded and moving on the x-axis
if (grounded && mx != 0)
{
    // if not already inside an object
    if ( ! place_meeting(x, y, obj_solid))
    {
        var bbox_wd = (bbox_right + 1 - bbox_left);
        var pos_x = (x + (sign(mx) * bbox_wd));
        var pos_y = (y + 1);
        
        if ( ! place_meeting(pos_x, pos_y, obj_solid))
        {
            entity_at_edge_of_solid = true;
        }
        
    }
}

