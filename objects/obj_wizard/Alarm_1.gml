if (instance_exists(obj_player)) {
	var distance = distance_to_object(obj_player);
	close = distance<=range;
	if (distance_to_object(close)) {
		instance_create_layer(obj_player.x, 0, "apple_layer", obj_apple);
		alarm[1] = 60;
	}
}