action = function(){
	obj_pause_manager.paused = false;
	obj_pause_manager.update_pause();
	room_goto(menu);
	instance_deactivate_object(obj_player);
	instance_deactivate_object(obj_camera);
	instance_deactivate_object(obj_pause_manager);
}