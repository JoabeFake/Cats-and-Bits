var deve_abrir = porta_deve_abrir();

//porta fechada e tem que abrir
if(deve_abrir && !porta_aberta){
	porta_aberta = true;
	
	switch(dir){
		case "up":
			x = pos_original_x;
			y = pos_original_y - sprite_height;
			break;
		case "left":
			x = pos_original_x - sprite_height;
			y = pos_original_y;
			break;
		case "right":
			x = pos_original_x + sprite_height;
			y = pos_original_y;
	}
	
	if(usar_timer){
		contador_timer = tempo_aberta;
	}
}

if(porta_aberta){
	if(usar_timer){
		if(!deve_abrir){
			contador_timer -= 1;
			if(contador_timer <= 0){
				porta_aberta = false;
				
				x = pos_original_x;
				y = pos_original_y;
				
			}
		}else{
			contador_timer = tempo_aberta;
		}
	}else{
		if(!deve_abrir){
			porta_aberta = false;
			
			x = pos_original_x;
			y = pos_original_y;
			
		}
	}
}