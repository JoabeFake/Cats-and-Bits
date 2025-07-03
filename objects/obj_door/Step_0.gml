var deve_abrir = porta_deve_abrir();

//porta fechada e tem que abrir
if(deve_abrir && !porta_aberta){
	porta_aberta = true;
	
	x = pos_original_x + offset_x;
	y = pos_original_y + offset_y;
	
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