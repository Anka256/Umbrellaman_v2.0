function scr_coinloader(){

	ini_open("saves.ini");
	global.coin = ini_read_real("save1", "Coin", 0);
	ini_close();
	
}