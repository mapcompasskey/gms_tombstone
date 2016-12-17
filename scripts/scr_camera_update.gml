///scr_camera_update(target_x, target_y, move_towards_target);

//
// Move the Position of the Camera Towards a Target
//
// Should mainly be called at the end of the Player Object's End Step event.
// Also, can be called if the Player suddenly changes position, ie: like exiting from a door.
//
{
    if (view_wview[0])
    {
        var target_x = argument0; // number
        var target_y = argument1; // number 
        var move_towards_target = argument2; // bool
        
        var easing_speed = 0.1;
        var distance_min = 1;
        var distance_max = 100;
        
        var distance_x = abs((target_x - (view_wview[0] / 2)) - view_xview[0]);
        var distance_y = abs((target_y - (view_hview[0] / 2)) - view_yview[0]);
        
        // if the target is outside minimum range
        if (distance_x > distance_min || distance_y > distance_min)
        {
            if (move_towards_target)
            {
                // if the target is outside the maximum range
                if (distance_x > distance_max || distance_y > distance_max)
                {
                    // snap to the target
                    move_towards_target = false;
                }
            }
            
            // if easing
            if (move_towards_target)
            {
                var camera_x = ((target_x - (view_wview[0] / 2)) - view_xview[0]) * easing_speed;
                var camera_y = ((target_y - (view_hview[0] / 2)) - view_yview[0]) * easing_speed;
                
                camera_x += view_xview[0];
                camera_y += view_yview[0];
            }
            // else, snap to target
            else
            {
                var camera_x = target_x - (view_wview[0] / 2);
                var camera_y = target_y - (view_hview[0] / 2);
            }
            
            camera_x = clamp(camera_x, 0, room_width - view_wview[0]);
            camera_y = clamp(camera_y, 0, room_height - view_hview[0]);
            
            //view_xview[0] = round(camera_x);
            //view_yview[0] = round(camera_y);
            
            view_xview[0] = camera_x;
            view_yview[0] = camera_y;
        }
    }
}
    
