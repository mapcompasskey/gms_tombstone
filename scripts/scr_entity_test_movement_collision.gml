///scr_entity_test_movement_collision(inst, mx, my, object, axis)

//
// Test Movement Collision
//
{
    // array(collision, new mx, new my)
    var rtn;
    rtn[0] = false;
    rtn[1] = 0;
    rtn[2] = 0;
    
    var inst = argument0;
    var inst_mx = argument1;
    var inst_my = argument2;
    var obj = argument3;
    var axis = argument4;
    
    with (inst)
    {
        var step_distance = 0;
        var new_distance = 0;
        
        var arr;
        arr[2] = 1;
        arr[1] = 0.1;
        arr[0] = 0.01;
        
        if (axis == 'x')
        {
            // if this instance will collide with an object on the x-axis
            if (place_meeting((x + inst_mx), y, obj))
            {
                // find how far the instance can move horizontally before colliding
                for (var i = 0; i < array_length_1d(arr); i++)
                {
                    step_distance = (sign(inst_mx) * arr[i]);
                    while ( ! place_meeting((x + new_distance + step_distance), y, obj) && abs(new_distance) < abs(inst_mx))
                    {
                        new_distance += step_distance;
                    }
                }
                
                inst_mx = new_distance;
                rtn[0] = true;
            }
        }
        
        else if (axis == 'y')
        {
            // if this instance will collide with an object on the y-axis
            if (place_meeting((x + inst_mx), (y + inst_my), obj))
            {
                // find how far the instance can move vertically before colliding
                for (var i = 0; i < array_length_1d(arr); i++)
                {
                    step_distance = (sign(inst_my) * arr[i]);
                    while ( ! place_meeting((x + inst_mx), (y + new_distance + step_distance), obj) && abs(new_distance) < abs(inst_my))
                    {
                        new_distance += step_distance;
                    }
                }
                
                inst_my = new_distance;
                rtn[0] = true;
            }
        }
        
        arr = 0;
    }
    
    rtn[1] = inst_mx;
    rtn[2] = inst_my;
    return rtn;
}

