ini_open ("scores.ini");
for (i = 0; i < 10; i++) {
	global.points_array[i, 0] = "unknown";
	global.points_array[i, 1] = 0;
}                          
room_goto(home);
