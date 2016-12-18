///scr_player_room_start()

// search for the door the player should exit from
with (obj_door)
{
    if (door_code == global.CURRENT_DOOR_CODE)
    {
        other.x = x;
        other.y = y;
        break;
    }
}

start_x = x;
start_y = y;

// start camera on the player
scr_camera_update(x, y, false);

