up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

op_length = array_length(option[menu_level]);

pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};


if (accept_key) {
		switch(pos) {
			//start game
			case 0:
				room_goto(2);
				break;
			case 1:
				room_goto(3);
				break;
			//settings
			case 2:
				break;
			//quit game
			case 3:
				game_end();
				break;
			}
}