up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

op_length = array_length(option[menu_level]);

pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};


if (accept_key) {
	var _sml = menu_level;
	
	switch(menu_level) {
		case 0: 
			switch(pos) {
				//start game
				case 0:
					menu_level = 2;
					break;
				case 1:
					room_goto(scoreboard);
					break;
				//how to play
				case 2:
					menu_level = 1;
					break;
				//quit game
				case 3:
					game_end();
					break;
				}
			break;
		case 1:
			switch(pos) {
				case 0:
					break;
				case 1:
					break;
				case 2:
					break;
				case 3: 
					menu_level = 0;
					break;
				}
			break;
			
		case 2: 
			switch(pos) {
				case 0:
					room_goto(level1);
					break;
				case 1: 
					room_goto(level2);
					break;
				case 2:
					room_goto(level3);
					break;
				case 3: 
					menu_level = 0;
					break;
				}
			break;
		if  _sml != menu_level {pos = 0};
		
		op_length = array_length(option[menu_level]);
	}
}