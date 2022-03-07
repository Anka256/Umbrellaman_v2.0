	#region vertical movement
	
	/// alçalma yükselme
	
y += fall + accelerate;

if (keyboard_check(vk_space))
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
		if (fall>0)
		{
			image_index = 1;
		}
		else
		{
			image_index = 0;
		}
	}
	#endregion
	
	#region vertical collision
if (place_meeting(x, y + fall , obj_platform))
	{
		while (!place_meeting(x, y + sign(fall), obj_platform))
		{
			y = y + sign(fall);
		}
		fall = 0;
		sprite_index = spr_run;
	}
else
{
	sprite_index = spr_fly;
}
	#endregion 
	
	#region score system
	
	counter -= 1;
if (counter = 0)
{
	counter = 100;
	score += 1;
	audio_play_sound(snd_scoreup, 20, false);
}
	
	#endregion
	