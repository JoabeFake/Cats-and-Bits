selected = false;
meu_fiobotao = noone;
meu_fioluz = noone;

var raio = 100;

// Encontrar fiobotao próximo (lado esquerdo)
with (fiobotao) {
    if (botao_dono == noone && point_distance(x, y, other.x, other.y) < raio) {
        botao_dono = other.id;
        other.meu_fiobotao = id;
        visible = false;
        other.visible = false;
    }
}

// Encontrar fioluz próximo (lado direito)
with (fioluz) {
    if (botao_dono == noone && point_distance(x, y, other.x, other.y) < raio) {
        botao_dono = other.id;
        other.meu_fioluz = id;
        visible = false;
        other.visible = false;
    }
}

