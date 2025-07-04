signal = connector_in.signal;

if(signal){
	image_index = 0;
}else{
	image_index = 1;
}

array_foreach(attached, function(_item){
	var _x = lengthdir_x(_item.len, _item.dir + image_angle);
	var _y = lengthdir_y(_item.len, _item.dir + image_angle);
	
	_item.inst.x = x + _x;
	_item.inst.y = y + _y;
	_item.inst.image_angle = image_angle;
})