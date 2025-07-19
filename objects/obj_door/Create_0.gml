objetos = []; //objetos que podem ativar a porta
estado_desejado = []; //estados que os objetos devem estar para abrir a porta
porta_aberta = false;

usar_timer = false // true ou false pra deixar a porta timeada
tempo_aberta = 60 // tá em frames, então 60 frames = 1 segundo
contador_timer = 0; // quanto tempo já passou desde que abriu

dir = "";

switch(image_angle){
	case 0:
		dir = "up";
		break;
		
	case 90:
		dir = "left";
		break;
	
	case -90:
		dir = "right";
		break;
}

pos_original_x = x;
pos_original_y = y;

function porta_deve_abrir(){
	var total = array_length(objetos);
	
	for(var i = 0; i < total; i++){
		var obj = objetos[i];
		var desejado = estado_desejado[i];
		
		if(!instance_exists(obj)) return false;
		if(obj.signal != desejado) return false;
	}
	return true;
}