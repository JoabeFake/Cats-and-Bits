scr_collision(obj_solid);
scr_collision(obj_pushpull);
scr_collision(obj_entity);

x += x_speed;
y += y_speed;

// check to see if the player is inside our radius
var collision = noone;
switch(string_lower(collision_type)) {
	case "circle":
		collision = collision_circle(x, y, interaction_radius, obj_entity, false, true)
	break;
	case "rectangle":
		collision = collision_rectangle(x - interaction_radius, y - interaction_radius, x + interaction_radius, y + interaction_radius, obj_entity, false, true);
	break;
}

if(collision == noone) {
	x_speed = 0;
	y_speed = 0;
}