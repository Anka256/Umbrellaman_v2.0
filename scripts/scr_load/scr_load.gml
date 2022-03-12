function scr_load(){

	ini_open("saves.ini");
	global.highscore = ini_read_real("save1","Score",0);
	ini_close();
	
	
	
	
}