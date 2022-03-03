#macro RES_W 1024
#macro RES_H 768

display_set_gui_size(RES_W, RES_H);


if (variable_global_exists("points") == false) {
    global.points = 0;
}
if (variable_global_exists("pointsthisroom") == false) {
	global.pointsthisroom = 0;
}
if (variable_global_exists("lives") == false || global.lives ==  0) {
	global.lives = 3;
}
textscale = 1;