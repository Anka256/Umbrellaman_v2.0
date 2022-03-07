function scr_load(){

	ini_open("saves.ini");
	global.highscore = ini_read_real("save1","Score",0);
	global.coin = ini_read_real("save1", "Coin", 0);
	ini_close();
	
	
	
	
}