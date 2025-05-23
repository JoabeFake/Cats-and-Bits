if (place_meeting(x, y, obj_player) || place_meeting(x, y, obj_caixa)){
	ligado = true;
	sprite_index = spr_botao_ligado;
}else{
	ligado = false;
	sprite_index = spr_botao_desligado;
}