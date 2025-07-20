x_speed = 0
y_speed = 0

spd = 3;
interaction_radius = 21;

holding_obj = noone;
is_carrying = false;

inputs = {
	right: ord("D"),
	left: ord("A"),
	up: ord("W"),
	down: ord("S"),
	
	grab: vk_space
}

attached = [];

add_attached = function (_inst){
	array_push(attached, {
		inst: _inst,
		len: point_distance(x, y, _inst.x, _inst.y),
		dir: point_direction(x, y, _inst.x, _inst.y)
	})	
}