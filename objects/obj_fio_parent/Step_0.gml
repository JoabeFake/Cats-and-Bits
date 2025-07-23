with(connector_in){
	outro = instance_place(x, y, obj_connector)
	if(outro != noone){
		signal = outro.signal;
	}
}

signal = connector_in.signal;

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