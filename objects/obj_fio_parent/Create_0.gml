connector_in = instance_create_layer(x - sprite_width / 2, y, "Gates", obj_connector);
connector_out = instance_create_layer(x + sprite_width / 2, y, "Gates", obj_connector);
signal = false;

connector_in.is_input = true;
connector_in.owner = id;

connector_out.is_input = false;
connector_out.owner = id;

attached = [];

add_attached = function (_inst){
	array_push(attached, {
		inst: _inst,
		len: point_distance(x, y, _inst.x, _inst.y),
		dir: point_direction(x, y, _inst.x, _inst.y)
	})	
}

add_attached(connector_out);
add_attached(connector_in);