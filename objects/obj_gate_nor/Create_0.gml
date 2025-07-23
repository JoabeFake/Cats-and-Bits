event_inherited();

connector_in1 = instance_create_layer(x - 16, y - 16, "Gates", obj_connector);
connector_in2 = instance_create_layer(x - 16, y + 16, "Gates", obj_connector);
connector_out = instance_create_layer(x + 16, y, "Gates", obj_connector);

connector_in1.owner = id;
connector_in1.owner = id;
connector_out.is_input = false;
connector_out.owner = id;

uls_collider_define_shape_custom(-11, -6, -14, -6, -14, -14, 2, -14, 9, -7, 14, -6, 14, 6, 12, 6, 2, 14, -14, 14, -14, 6, -11, 6);

attached = [];

add_attached = function (_inst){
	array_push(attached, {
		inst: _inst,
		len: point_distance(x, y, _inst.x, _inst.y),
		dir: point_direction(x, y, _inst.x, _inst.y)
	})	
}

was_rejected = false;
rejected_from = noone;

add_attached(connector_in1);
add_attached(connector_in2);
add_attached(connector_out);