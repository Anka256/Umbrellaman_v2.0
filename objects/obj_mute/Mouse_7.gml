
switch (mute){
case 0:	mute = 1;
		audio_master_gain(1);
		sprite_index = spr_unmute;
		break;
		
case 1: mute = 0;
		audio_master_gain(0);
		sprite_index = spr_mute;
		break;
}