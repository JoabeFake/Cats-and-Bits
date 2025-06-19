var _right, _left, _up, _down, _grab;
	_right = keyboard_check(inputs.right);
	_left = keyboard_check(inputs.left);
	_up = keyboard_check(inputs.up);
	_down = keyboard_check(inputs.down);
	_grab = keyboard_check(inputs.grab);
		
var tecla = _right - _left != 0 || _down  -_up != 0;

var dir = point_direction(0, 0, _right - _left, _down - _up);
		
x_speed = lengthdir_x(spd * tecla, dir);
y_speed = lengthdir_y(spd * tecla, dir);

if(_grab){
	var inst = collision_circle(x, y, int_radius, obj_pushpull, false, true);
	if(inst != noone){
		held_obj = inst;
		inst.is_being_held = true;
			
		if (inst.slot_id != noone){
			inst.slot_id.obj_in_slot = noone;
			inst.slot_id = noone;
		}
		held_obj.x_speed = x_speed;
		held_obj.y_speed = y_speed;
	}
}

if (keyboard_check_released(inputs.grab)) {
    if (held_obj != noone && held_obj.is_being_held) {
        held_obj.is_being_held = false;
        held_obj.try_slot();
        held_obj = noone;
    }
}