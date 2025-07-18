// Desenha a porta normalmente
draw_self();
draw_set_font(fnt_m5x7);

if(usar_timer){
	switch (dir) {
        case "up": // cima
			draw_text(x - sprite_width / 4, y - sprite_height / 2, contador_timer / 60);
            break;

        case "right": // direita
			draw_text(x + sprite_height / 2, y - sprite_width / 4, contador_timer / 60);
            break;

        case "left": // esquerda
			draw_text(x - sprite_height / 2, y + sprite_width / 4, contador_timer / 60);
            break;
    }
}

if (array_length(objetos) > 0) {
    var offset = 10; // espaçamento entre ícones
    var scale = 0.5;

    var base_x, base_y;
    var dir_x = 0;
    var dir_y = 0;

    // Define base de desenho e direção conforme a orientação
    switch (dir) {
        case "up": // cima
            base_x = x - sprite_width / 4;
            base_y = y - sprite_height / 2;
            dir_y = 1;
            break;

        case "right": // direita
            base_x = x + sprite_height / 2;
            base_y = y - sprite_width / 4;
            dir_x = 1;
            break;

        case "left": // esquerda
            base_x = x - sprite_height / 2;
            base_y = y + sprite_width / 4;
            dir_x = -1;
            break;
    }

    // Loop dos objetos conectados
    for (var i = 0; i < array_length(objetos); i++) {
        var obj = objetos[i];
        var des = estado_desejado[i];

        if (instance_exists(obj)) {
            var correct = obj.signal == des;
            var transparency = correct ? 1 : 0.5;

            var spr = obj.sprite_index;
            var img = obj.image_index;

            var draw_x = base_x + (i * offset * dir_x);
            var draw_y = base_y + (i * offset * dir_y);

            draw_sprite_ext(spr, img, draw_x, draw_y, scale, scale, 0, c_white, transparency);
        }
    }
}






//draw_self();

//// Verifica se há uma lista/array de objetos conectados
//if (array_length(objetos) > 0) {
//    var base_x = x - sprite_width / 6; // mais à esquerda da porta
//    var base_y = y - sprite_height / 2; // mais acima da porta

//    for (var i = 0; i < array_length(objetos); i++) {
//        var obj = objetos[i];
//		var des = estado_desejado[i];

//        // Se o objeto ainda existir (não foi destruído)
//        if (instance_exists(obj)) {
//			var correct = obj.signal == des;
//			var transparency = 0.2;
			
//			if(correct) transparency = .5 else transparency = 1;
			
//            var spr = obj.sprite_index;
//			var img = obj.image_index;
//            // Desenha o sprite na posição ajustada
//            //draw_sprite(spr, 0, base_x, base_y + (i * 20)); // 20 é o espaçamento vertical
//			draw_sprite_ext(spr, img, base_x, base_y - (i * 10), .5, .5, 0, c_white, transparency);
//        }
//    }
//}

////draw_text(x, y - sprite_height, string(contador_timer / 60) + " segundos");