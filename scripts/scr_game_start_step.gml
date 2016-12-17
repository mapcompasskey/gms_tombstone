///scr_game_start_step()

// track the amount of time that has passed since the last frame
var dt = room_speed / 1000000 * delta_time;
global.TICK = min(2, dt);

if (keyboard_check_pressed(ord("R")))
{
    room_restart();
}

