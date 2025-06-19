if (mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x(0);
    var my = device_mouse_y(0);
    
    var clicked = instance_position(mx, my, obj_connector);
    
    if (clicked != noone) {
        // Se ainda não temos um conector selecionado
        if (global.wire_start == noone && !clicked.is_input) {
            global.wire_start = clicked;
            clicked.selected = true;
        }
        // Já temos um conector de saída, agora conecta se for entrada
        else if (global.wire_start != noone && clicked.is_input) {
            // Cria o fio
            var wire = instance_create_layer(0, 0, "Gates", obj_wire);
            wire.start_connector = global.wire_start;
            wire.end_connector = clicked;
            clicked.connected_to = wire.start_connector;

            // Resetar seleção
            global.wire_start.selected = false;
            global.wire_start = noone;
        }
        // Clicou em outra coisa — cancela
        else {
            if (global.wire_start != noone) {
                global.wire_start.selected = false;
                global.wire_start = noone;
            }
        }
    }
}
