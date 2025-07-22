connector_in = instance_create_layer(x - 16, y, "Gates", obj_connector);
connector_in.is_input = true;
connector_in.owner = id;

has_light = instance_exists(obj_uls_controller);

if(has_light){
	light = instance_create_layer(x, y, "Light_System", obj_uls_light);

	uls_set_light_color(light, c_yellow);
	uls_set_light_range(light, 250);
	uls_set_light_alpha(light, 0);
}

signal = false;

attached = [];

add_attached = function (_inst){
	array_push(attached, {
		inst: _inst,
		len: point_distance(x, y, _inst.x, _inst.y),
		dir: point_direction(x, y, _inst.x, _inst.y)
	})	
}

add_attached(connector_in);