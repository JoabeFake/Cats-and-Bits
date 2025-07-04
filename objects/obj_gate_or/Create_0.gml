event_inherited();

connector_in1 = instance_create_layer(x - 16, y - 16, "Gates", obj_connector);
connector_in2 = instance_create_layer(x - 16, y + 16, "Gates", obj_connector);
connector_out = instance_create_layer(x + 16, y, "Gates", obj_connector);

connector_in1.owner = id;
connector_in1.owner = id;
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

add_attached(connector_in1);
add_attached(connector_in2);
add_attached(connector_out);