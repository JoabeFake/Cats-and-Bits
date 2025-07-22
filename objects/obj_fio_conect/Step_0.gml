var dist = sprite_width * 0.5;

// Detectar fios de cima e baixo
wire_up = collision_rectangle(
    x + dir_up[0] * dist - 2, y + dir_up[1] * dist - 2,
    x + dir_up[0] * dist + 2, y + dir_up[1] * dist + 2,
    obj_fio_parent, false, true
);

wire_down = collision_rectangle(
    x + dir_down[0] * dist - 2, y + dir_down[1] * dist - 2,
    x + dir_down[0] * dist + 2, y + dir_down[1] * dist + 2,
    obj_fio_parent, false, true
);

connector_front = collision_rectangle(
    x + dir_front[0] * dist - 2, y + dir_front[1] * dist - 2,
    x + dir_front[0] * dist + 2, y + dir_front[1] * dist + 2,
    obj_fio_parent, false, true
);

// Checar sinais
var signal_up = (wire_up != noone && wire_up.signal != undefined) ? wire_up.signal : false;
var signal_down = (wire_down != noone && wire_down.signal != undefined) ? wire_down.signal : false;

// Regras de ativação
signal = signal_up && signal_down;

// Enviar sinal pra frente
if (connector_front != noone) {
    connector_front.signal = true;
}

// Atualizar imagem
image_index = signal ? 1 : 0;