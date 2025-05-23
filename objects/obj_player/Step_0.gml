#region //MOVEMENT
	#region //INPUTS
		var _right, _left, _up, _down, _grab;
		_right = keyboard_check(inputs.right);
		_left = keyboard_check(inputs.left);
		_up = keyboard_check(inputs.up);
		_down = keyboard_check(inputs.down);
		_grab = keyboard_check(inputs.grab);
	#endregion

	#region //HORIZONTAL
		var h_input = (_right - _left);
		
		if(h_input != 0){
			x_speed = spd * h_input;
		
			//animation
			//if(h_input > 0){
			//	state = PLAYERSTATE.WALKING_RIGHT;
			//}else{
			//	state = PLAYERSTATE.WALKING_LEFT;
			//}
		
		}else{
			x_speed = 0;
		}
	#endregion
	
	#region //VERTICAL
		var v_input = (_down - _up);
		
		if(v_input != 0){
			y_speed = spd * v_input;
		
			//animation
			//if(v_input > 0){
			//	state = PLAYERSTATE.WALKING_DOWN;
			//}else{
			//	state = PLAYERSTATE.WALKING_UP;
			//}
		
		}else{
			y_speed = 0;
		}
	#endregion
	
	//if(h_input == 0 && v_input == 0){
	//	state = PLAYERSTATE.IDLE;
	//}
	
#endregion

#region COLLISION

	// solid objects
	scr_collision(obj_solid);
	
	#region PUSH OBJECTS
		var instance = instance_place(x + x_speed, y, obj_pushpull)
		if(instance != noone){
			instance.x_speed = x_speed + sign(x_speed);
		}
		
		instance = instance_place(x, y + y_speed, obj_pushpull)
		if(instance != noone){
			instance.y_speed = y_speed + sign(y_speed);
		}
	#endregion
	
	#region PULL OBJECT
		if(keyboard_check(_grab)){
			instance = collision_circle(x, y, interaction_radius, obj_pushpull, false, true);
			if(instance != noone){
				instance.x_speed = x_speed;
				instance.y_speed = y_speed;
			}
		}
	#endregion
	
	// push and pull objects
	scr_collision(obj_pushpull);

	x += x_speed;
	y += y_speed;
#endregion

#region ANIMATION STATES
	//switch(state) {
	//	case PLAYERSTATE.idle:
	//		image_speed = 0;
	//	break;
	//	case PLAYERSTATE.walking_up:
	//		sprite_index = spr_character_up;
	//		image_speed = 1;
	//	break;
	//	case PLAYERSTATE.walking_down:
	//		sprite_index = spr_character_down;
	//		image_speed = 1;
	//	break;
	//	case PLAYERSTATE.walking_left:
	//		sprite_index = spr_character_left;
	//		image_speed = 1;
	//		image_xscale = 2;
	//	break;
	//	case PLAYERSTATE.walking_right:
	//		sprite_index = spr_character_left;
	//		image_speed = 1;
	//		image_xscale = -2;
	//	break;
	//}
#endregion