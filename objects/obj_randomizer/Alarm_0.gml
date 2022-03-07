alarm_set(0,100);

var midpoint = random_range(130,1260);
var gap = random_range(120,160);

instance_create_layer(1300, midpoint + gap, "Instances", obj_lightning);

var reverselightning = instance_create_layer(1300, midpoint - gap, "Instances", obj_lightning);
	reverselightning.sprite_index = spr_lightningtop;