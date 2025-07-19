event_inherited();

if (connector_in1 != noone && connector_in2 != noone && connector_out != noone){
		var a = connector_in1.signal;
		var b = connector_in2.signal;
		connector_out.signal = a ^ b;
}

array_foreach(attached, function(_item){
	var _x = lengthdir_x(_item.len, _item.dir + image_angle);
	var _y = lengthdir_y(_item.len, _item.dir + image_angle);
	
	_item.inst.x = x + _x;
	_item.inst.y = y + _y;
	_item.inst.image_angle = image_angle;
})