with(connector_in){
	outro = instance_place(x, y, obj_connector)
	if(outro != noone){
		signal = outro.signal;
	}else{
		signal = false;
	}
}

signal = connector_in.signal;

connector_out.signal = signal;

with(connector_out){
	outro = instance_place(x, y, obj_connector);
	if(outro != noone){
		outro.signal = signal;
	}else{
		signal = false;
	}
}

if(signal){
	image_index = 1;
}else{
	image_index = 0;
}