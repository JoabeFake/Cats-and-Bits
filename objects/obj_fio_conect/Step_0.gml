with(connector_in1){
	outro = instance_place(x, y, obj_connector)
	if(outro != noone){
		signal = outro.signal;
	}
}

with(connector_in2){
	outro = instance_place(x, y, obj_connector)
	if(outro != noone){
		signal = outro.signal;
	}
}

signal = connector_in1.signal || connector_in2.signal;

connector_out.signal = signal;

with(connector_out){
	outro = instance_place(x, y, obj_connector);
	if(outro != noone){
		outro.signal = signal;
	}
}

if(signal){
	image_index = 1;
}else{
	image_index = 0;
}