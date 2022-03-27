function scr_coinsaver(){
	
	ini_open("saves.ini");
	ini_write_real("save1", "Coin", global.coin);
	ini_close();
}