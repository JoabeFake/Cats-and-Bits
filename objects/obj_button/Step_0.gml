signal = place_meeting(x, y, obj_player) || place_meeting(x, y, obj_block);

connector_out.signal = signal;

if(signal){
	image_index = 1;
}else{
	image_index = 0;
}