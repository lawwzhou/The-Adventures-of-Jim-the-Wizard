global.points = 0;
global.lives -= 1;
audio_play_sound(sounddeath, 0, false);
room_goto(level1);
if (global.lives <= 0) {
	room_goto(gameover);
}