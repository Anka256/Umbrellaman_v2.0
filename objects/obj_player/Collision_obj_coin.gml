with(other)
{
	audio_play_sound(snd_coinup, 15, false);
	global.coin += 1;
	instance_destroy(obj_coin);
}
