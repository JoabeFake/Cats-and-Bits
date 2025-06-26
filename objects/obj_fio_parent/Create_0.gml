connector_a = noone;
connector_b = noone;
signal = false;

//var ang = degtorad(image_angle);
//var dir_x = cos(ang);
//var dir_y = sin(ang);

//dir_a = [-dir_x, -dir_y];
//dir_b = [ dir_x,  dir_y];

var directions = set_wire_directions_8dir(image_angle);

dir_a = directions[0];
dir_b = directions[1];