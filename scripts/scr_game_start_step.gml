///scr_game_start_step()

/*
// track the amount of time that has passed since the last frame
var dt = room_speed / 1000000 * delta_time;
global.TICK = min(2, dt);
*/

// convert the amount of microseconds that have passed since the last step to seconds
var dt = (1/1000000 * delta_time);

// limit TICK to 8fps: (1 / 1,000,000) * (1,000,000 / 8) = 0.125
global.TICK = min(0.125, dt);

// restart the room
if (keyboard_check_pressed(ord("R")))
{
    room_restart();
}

