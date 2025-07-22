// Direções
var directions = set_wire_directions_8dir(image_angle);

// Frente = direção B
dir_front = directions[1];

// Cima = 90° em relação à frente
dir_up = [-dir_front[1], dir_front[0]];

// Baixo = -Cima
dir_down = [dir_front[1], -dir_front[0]];

// Inicialização
signal = false;

connector_front = noone;
wire_up = noone;
wire_down = noone;