function Attachment_Controller() constructor{
	self.attached = [];
	static add = function(_dest, _src){
		var _obj = {
			inst: _src,
			dest: _dest,
			len: point_distance(_dest.x, _dest.y, _src.x, _src.y),
			dir: point_direction(_dest.x, _dest.y, _src.x, _src.y),
			angle: _src.image_angle
		};
		array_push(self.attached, _obj);
		return _obj;
	};
	
	static remove = function(_obj){
		var _ind = -1;
		for(var i = 0; i < array_length(self.attached); i++){
			if(_obj == self.attached[i]){
				_ind = i;
				break;
			}
		}
		if(_ind >= 0){
			array_delete(self.attached, _ind, 1);
		}
	};
	
	static update = function(){
		array_foreach(self.attached, function(_item){
			var _x = lengthdir_x(_item.len, _item.dir + _item.dest.image_angle);
			var _y = lengthdir_y(_item.len, _item.dir + _item.dest.image_angle);
			
			_item.inst.x = _item.dest.x + _x;
			_item.inst.y = _item.dest.y + _y;
			_item.inst.image_angle = _item.angle + _item.dest.image_angle;
		});
	};
};