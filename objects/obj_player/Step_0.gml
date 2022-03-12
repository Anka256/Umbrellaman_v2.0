	#region vertical movement
	
	/// alçalma yükselme
	
y += fall + accelerate;
up = (keyboard_check(vk_space)) || (mouse_check_button(mb_left))

if (up)
{
	fall = -7;
	accelerate -= 0.3;
	show_debug_message(fall+accelerate);
}
else
{
accelerate = 0;
fall += 0.6;
}

	/// şemsiye animasyonu
	
if (y > yprevious)
	{
		image_speed = 0;
		image_index = (fall > 0 ? 1 : 0);
	}
	#endregion
	
	#region vertical collision
	
if (place_meeting(x, y + fall, obj_platform))
{
	while (!place_meeting(x, y + sign(fall + accelerate), obj_platform))
	{
		y += sign(fall);
	}
	fall = 0;
	sprite_index = spr_run;
	image_speed = 1;
}
else
{
	sprite_index = spr_fly;
	image_speed = 0;
}

if (place_meeting(x, y - fall, obj_ceiling)) && up
{	
	while (!place_meeting(x, y - sign(fall + accelerate), obj_ceiling))
	{
		y -= sign(fall);
	}
	fall = 0;
	accelerate = 0;
	
}


	#endregion 
	
	#region score system
	
	/// kazanılan skor
	counter -= 1;
if (counter = 0)
{
	counter = 100;
	score += 1;
	audio_play_sound(snd_scoreup, 20, false);
}

	/// kazanılan coin
if (place_meeting(x, y, obj_coin))
{
	with(other)
	{
		audio_play_sound(snd_coinup, 15, false);

		instance_destroy(obj_coin);
		global.coin += 1;
	}
}
	/// highscore yenileme
if (place_meeting(x, y, obj_lightning))
{

	if (score > global.highscore)
	{
	   global.highscore = score;
	}

	scr_save();
	room_restart();
	score = 0;	
}

	#endregion
	