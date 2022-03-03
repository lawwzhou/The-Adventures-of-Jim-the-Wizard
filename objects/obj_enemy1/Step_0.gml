
if (hp <= 0) {
	instance_destroy();
	audio_play_sound(sounddeath, 0, false);
	if (instance_exists(obj_player)) 
		global.points += 100;
}

if (hsp != 0)
    image_xscale = -sign(hsp);
	
vsp = vsp + grv;

x = x + hsp;

// vertical collison
if (place_meeting(x, y + vsp, obj_wall))
{
	while (!place_meeting(x, y + sign(vsp), obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp

