function scr_save(){
	
	ini_open("saves.ini");
	ini_write_real("save1", "Score", global.highscore);
	ini_close();
	
}