var _right, _left, _up, _down, _grab;
	_right = keyboard_check(inputs.right);
	_left = keyboard_check(inputs.left);
	_up = keyboard_check(inputs.up);
	_down = keyboard_check(inputs.down);
	_grab = inputs.grab;
		
var tecla = _right - _left != 0 || _down  -_up != 0;

var dir = point_direction(0, 0, _right - _left, _down - _up);
		
x_speed = lengthdir_x(spd * tecla, dir);
y_speed = lengthdir_y(spd * tecla, dir);

if(keyboard_check_pressed(_grab)){
	
	var nearest = noone;
	
	with (obj_pushpull) {
        var dist = point_distance(other.x, other.y, x, y);
        if (dist <= other.interaction_radius * 2) {
            nearest = id;
        }
    }
	
	if(nearest != noone && !is_carrying){
		
		if (nearest.slot_id != noone){
			nearest.slot_id.obj_in_slot = noone;
			nearest.slot_id = noone;
		}
		
		is_carrying = true;
		holding_obj = nearest;
	}
}

if(keyboard_check(_grab)){
	if(is_carrying){
		var dist_to_block = point_distance(x, y, holding_obj.x, holding_obj.y);
		//var dx = x_speed;
		//var dy = y_speed;
		
		holding_obj.x_speed = x_speed;
		holding_obj.y_speed = y_speed;
		
		if(dist_to_block > interaction_radius * 2.1){
			holding_obj.x_speed = 0;
			holding_obj.y_speed = 0;
			holding_obj.try_slot();
			holding_obj = noone;
			is_carrying = false;
		}
	}
}

if(keyboard_check_released(_grab)){
	if(is_carrying){
		holding_obj.x_speed = 0;
		holding_obj.y_speed = 0;
		holding_obj.try_slot();
		holding_obj = noone;
		is_carrying = false;
	}
}