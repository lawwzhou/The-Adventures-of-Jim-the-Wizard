if (hp <= 0) {
	instance_destroy();
	global.points += 1000;
	room_goto(win);
}
