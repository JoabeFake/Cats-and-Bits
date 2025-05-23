ligado = false;
entrada_anterior = false;
tipo_logica = "AND" //PODE SER "AND", "OR" ou "NOT" ou "TOGGLE"
entradas = [];

function sprite_luz(){
	if(ligado){
		sprite_index = spr_luz_ligada;
	}else{
		sprite_index = spr_luz_desligada;
	}
}