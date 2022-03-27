	// listeden çağrılan n. item'ı kaldırıp n+1.'yi çağırma

i++;
instance_deactivate_layer("Instances");
instance_create_layer(540, 1040, "Instances", items[| i % ds_list_size(items)]);
