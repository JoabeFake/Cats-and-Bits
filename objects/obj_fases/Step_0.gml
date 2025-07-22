event_inherited();
//Está bloqueado?
if(status == status_bloqueio.bloqueado){
	image_speed = 0;
	image_alpha = 0.2;
}else{
	image_speed = 1;
	image_alpha = 1;
}

//global.spr_fases = [spr_fase_icon]; //Lista de Sprites para fases diferentes