dist = ((abs(dir_b[0])) + (abs(dir_b[1])) == 2) ? sprite_width * 0.4 : sprite_width * 0.5;

wire_a = collision_rectangle(x + dir_a[0] * dist + 1, y + dir_a[1] * dist + 1, x + dir_a[0] * dist - 1, y + dir_a[1] * dist - 1, obj_fio_parent, false, true);

connector_a = collision_rectangle(x + dir_a[0] * dist - 1, y + dir_a[1] * dist - 1, x + dir_a[0] * dist + 1, y + dir_a[1] * dist + 1 , obj_connector, false, true);
connector_b = collision_rectangle(x + dir_b[0] * dist - 1, y + dir_b[1] * dist - 1, x + dir_b[0] * dist + 1, y + dir_b[1] * dist + 1 , obj_connector, false, true);

var inputs = [];
  
if(connector_a != noone) array_push(inputs, connector_a.signal);

if(wire_a != noone && wire_a.signal != undefined) array_push(inputs, wire_a.signal);

signal = false;

for(var i = 0; i < array_length(inputs); i++){
	if (inputs[i]){
		signal = true;
		break;
	}
}

if (connector_a != noone) connector_a.signal = signal;
if (connector_b != noone) connector_b.signal = signal;

if(signal){
	image_index = 1;
}else{
	image_index = 0;
}