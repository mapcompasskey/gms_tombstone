///scr_game_start_begin_step()

// get the player's input
global.PLAYER_KEY_LEFT = keyboard_check(global.KEY_LEFT);
global.PLAYER_KEY_RIGHT = keyboard_check(global.KEY_RIGHT);
global.PLAYER_KEY_UP = keyboard_check(global.KEY_UP);
global.PLAYER_KEY_DOWN = keyboard_check(global.KEY_DOWN);
global.PLAYER_KEY_JUMP_PRESSED = keyboard_check_pressed(global.KEY_JUMP);
global.PLAYER_KEY_JUMP_RELEASED = keyboard_check_released(global.KEY_JUMP);
//global.PLAYER_KEY_ATTACK_1 = keyboard_check_pressed(global.KEY_ATTACK_1);
//global.PLAYER_KEY_ATTACK_2 = keyboard_check_pressed(global.KEY_ATTACK_2);

