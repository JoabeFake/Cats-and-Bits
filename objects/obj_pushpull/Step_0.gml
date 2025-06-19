scr_collision(obj_wall);
scr_collision(obj_pushpull);
scr_collision(obj_player);

x += x_speed;
y += y_speed;

var collision = noone;
switch(string_lower(collision_type)){
	case "circle":
		collision = collision_circle(x, y, int_radius, obj_player, false, true)
	break;
	case "rectangle":
		collision = collision_rectangle(x - int_radius, y - int_radius, x + int_radius, y + int_radius, obj_player, false, true);
	break;
}

if(collision == noone) {
	x_speed = 0;
	y_speed = 0;
}