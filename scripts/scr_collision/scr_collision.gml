function scr_collision(argument0) {
	var obj = argument0;

	if(place_meeting(x + x_speed, y, obj)) {
		while(!place_meeting(x + sign(x_speed), y, obj)) {
			x += sign(x_speed);
		}
		
		x_speed = 0;
	}
	
	if(place_meeting(x, y + y_speed, obj)) {
		while(!place_meeting(x, y + sign(y_speed), obj)) {
			y += sign(y_speed);
		}
		
		y_speed = 0;
	}
}