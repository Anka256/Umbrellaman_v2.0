function scr_save(){
	
	ini_open("saves.ini");
	ini_write_real("save1", "Score", global.highscore);
	ini_write_real("save1", "Coin", global.coin);
	ini_close();
}