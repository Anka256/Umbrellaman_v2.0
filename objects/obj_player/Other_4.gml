scr_load();
audio_resume_sound(snd_theme);
counter = 100;

if (!audio_is_playing(snd_theme))
{
	audio_play_sound(snd_theme, 10, true);
}