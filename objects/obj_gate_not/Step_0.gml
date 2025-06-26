event_inherited();

if (connector_in != noone && connector_out != noone){
		var a = connector_in.signal;
		connector_out.signal = !a;
}

array_foreach(attached, function(_item){
	var _x = lengthdir_x(_item.len, _item.dir + image_angle);
	var _y = lengthdir_y(_item.len, _item.dir + image_angle);
	
	_item.inst.x = x + _x;
	_item.inst.y = y + _y;
	_item.inst.image_angle = image_angle;
})