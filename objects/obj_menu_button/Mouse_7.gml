switch (button_id){
	case 0: //Continuar
		obj_pause_manager.paused = false;
		obj_pause_manager.update_pause();
	break;
	
	case 1: //Opcoes
	
	break;
	
	case 2: //Sair
		room = menu_1;
		instance_destroy(obj_player);
	break;
}