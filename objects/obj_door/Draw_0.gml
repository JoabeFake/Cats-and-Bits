draw_self();

// Verifica se há uma lista/array de objetos conectados
if (array_length(objetos) > 0) {
    var base_x = x - 12; // mais à esquerda da porta
    var base_y = y - 32; // mais acima da porta

    for (var i = 0; i < array_length(objetos); i++) {
        var obj = objetos[i];
		var des = estado_desejado[i];

        // Se o objeto ainda existir (não foi destruído)
        if (instance_exists(obj)) {
			var correct = obj.signal == des;
			var transparency = 0.2;
			
			if(correct) transparency = .5 else transparency = 1;
			
            var spr = obj.sprite_index;
			var img = obj.image_index;
            // Desenha o sprite na posição ajustada
            //draw_sprite(spr, 0, base_x, base_y + (i * 20)); // 20 é o espaçamento vertical
			draw_sprite_ext(spr, img, base_x, base_y - (i * 10), .5, .5, 0, c_white, transparency);
        }
    }
}

//draw_text(x, y - sprite_height, string(contador_timer / 60) + " segundos");