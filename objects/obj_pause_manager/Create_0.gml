paused = false;
layer_id = layer_get_id("PauseLayer");
layer_set_visible(layer_id, false);

update_pause = function(){
	if(paused){
		instance_deactivate_all(true);
		layer_set_visible(layer_id, true);
	}else{
		instance_activate_all();
		layer_set_visible(layer_id, false);
	}
}

update_pause();