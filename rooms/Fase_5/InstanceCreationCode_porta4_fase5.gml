objetos = [led2_fase5]; //objetos que podem ativar a porta
estado_desejado = [true]; //estados que os objetos devem estar para abrir a porta
porta_aberta = false;

usar_timer = false // true ou false pra deixar a porta timeada
tempo_aberta = 60 // tá em frames, então 60 frames = 1 segundo
contador_timer = 0; // quanto tempo já passou desde que abriu

light = instance_create_layer(x, y, "Light_System", obj_uls_light);
uls_set_light_color(light, c_aqua);
uls_set_light_range(light, 80);
uls_set_light_alpha(light, 0.4);