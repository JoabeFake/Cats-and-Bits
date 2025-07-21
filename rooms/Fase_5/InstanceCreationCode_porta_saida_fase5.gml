objetos = [led1_fase5, led2_fase5, led3_fase5];
estado_desejado = [true, true, true];

light = instance_create_layer(x, y, "Light_System", obj_uls_light);
uls_set_light_color(light, c_aqua);
uls_set_light_range(light, 80);
uls_set_light_alpha(light, 0.4);

usar_timer = false;
tempo_aberta = 60;