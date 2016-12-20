///scr_room_stage_created(default door code)

// if default door code is used
if (argument_count > 0)
{
    // add the player if doesn't exist
    if (global.PLAYER == noone)
    {
        // set default door code
        var default_door_code = argument[0];
        global.CURRENT_DOOR_CODE = default_door_code;
        
        // add player instance
        global.PLAYER = instance_create(0, 0, obj_player);
    }
}

// update room speed
room_speed = global.ROOM_SPEED;

// make the Room persistent
//room_persistent = true;

/*
// add the HUD if it doesn't exist
if ( ! instance_exists(obj_hud))
{
    instance_create(0, 0, obj_hud);
}

// add the debug layer
if (global.DEBUG_MODE)
{
    if ( ! instance_exists(obj_debug_mode))
    {
        instance_create(0, 0, obj_debug_mode);
    }    
}
*/

