
if (score > global.highscore)
{
   global.highscore = score;
}

scr_save();

	room_restart();
	score = 0;