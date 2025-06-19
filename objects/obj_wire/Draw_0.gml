if (start_connector != noone && end_connector != noone) {
	
	if(start_connector.signal){
		draw_set_color(c_lime);
	}else{
		draw_set_color(c_gray);
	}
	
    //draw_set_color(start_connector.signal ? c_lime : c_gray);
	draw_line(start_connector.x, start_connector.y, end_connector.x, end_connector.y);
}
