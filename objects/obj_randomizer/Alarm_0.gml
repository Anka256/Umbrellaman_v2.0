alarm_set(0,100);
	/// random engel
var midpoint = random_range(130,1260);
var gap = random_range(120,160);

instance_create_layer(1300, midpoint + gap, "Instances", obj_lightning);

var reverselightning = instance_create_layer(1300, midpoint - gap, "Instances", obj_lightning);
	reverselightning.sprite_index = spr_lightningtop;
	
	
	/// random coin
	
	var coinchance = choose(0, 1);
	switch(coinchance)
	{
		case 0: break;
		case 1: var coinpoint = random_range(60,1300);
				instance_create_layer(1850, coinpoint, "Instances", obj_coin);
				break;
	}