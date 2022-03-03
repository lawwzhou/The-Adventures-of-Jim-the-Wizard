/// @description movement

// You can write your code in this editor
// player input
right = keyboard_check(ord("D"));
if (keyboard_check(ord("D")))
	sprite_index = jim1;
left = keyboard_check(ord("A"));
if (keyboard_check(ord("A")))
	sprite_index = jimleft;

jump = keyboard_check(vk_space);
//movement
var move = right - left;
vsp = vsp + grv;
hsp = move * walksp;

//jumping
if (place_meeting(x, y + 1, obj_wall) && (jump))
{
		vsp = vsp - 20;
		audio_play_sound(soundjump, 0, false);
}



//horizontal collison
if (place_meeting(x + hsp, y, obj_wall))
{
	while (!place_meeting(x + sign(hsp), y, obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

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


y = y + vsp;

//fireball shooting
if (mouse_check_button(mb_left) && (cooldown<1)) {
	if (sprite_index == jimleft || sprite_index == jimWandLeft)
	{
		sprite_index = jimWandLeft;
		instance_create_layer(x - 100, y, "bullet_layer", obj_bulletleft);
		audio_play_sound(soundbullet, 0, false);
		cooldown = 20;
		alarm[0] = 60;
	}
	else {
	sprite_index = jimWand;
	instance_create_layer(x + 100, y, "bullet_layer", obj_bullet);
	audio_play_sound(soundbullet, 0, false);
	cooldown = 20;
	alarm[0] = 60;
		}
	}
cooldown = cooldown - 1;