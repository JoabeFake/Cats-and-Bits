connector_out.signal = place_meeting(x, y, obj_player) || place_meeting(x, y, obj_block);

if(connector_out.signal){
	image_index = 1;
}else{
	image_index = 0;
}