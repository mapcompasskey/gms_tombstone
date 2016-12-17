///scr_entity_check_edge_of_platforms()

entity_at_edge_of_platform = false;

// if grounded and moving on the x-axis
if (grounded && mx != 0)
{
    // if not already inside an object
    if ( ! place_meeting(x, y, obj_platform_1))
    {
        var bbox_wd = (bbox_right + 1 - bbox_left);
        var pos_x = (x + (sign(mx) * bbox_wd));
        var pos_y = (y + 1);
        
        if ( ! place_meeting(pos_x, pos_y, obj_platform_1))
        {
            entity_at_edge_of_platform = true;
        }
        
    }
    
    if ( ! entity_at_edge_of_platform)
    {
        // if not already inside an object
        if ( ! place_meeting(x, y, obj_platform_2))
        {
            var bbox_wd = (bbox_right + 1 - bbox_left);
            var pos_x = (x + (sign(mx) * bbox_wd));
            var pos_y = (y + 1);
            
            if ( ! place_meeting(pos_x, pos_y, obj_platform_2))
            {
                entity_at_edge_of_platform = true;
            }
            
        }
    }
}

