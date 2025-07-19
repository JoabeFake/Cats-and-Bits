light = instance_create_layer(x, y, "Light_System", obj_uls_light);

uls_set_light_color(light, c_orange);
uls_set_light_range(light, 100);
uls_set_light_alpha(light, 0.8);

add_attached(light);