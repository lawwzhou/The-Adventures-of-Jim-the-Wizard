global.lives -= 1;
room_goto(level3);
audio_play_sound(sounddeath, 0, false);
if (global.lives <= 0) {
	room_goto(gameover);
}
