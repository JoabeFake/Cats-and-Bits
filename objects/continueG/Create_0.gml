selected = false;
meu_fiobotao = noone;
meu_fioluz = noone;

var raio = 100;

// Procura o fiobotao mais próximo que ainda não foi usado
with (fiobotao) {
    if (botao_dono == noone && point_distance(x, y, other.x, other.y) < raio) {
        botao_dono = other.id;
        other.meu_fiobotao = id;
        visible = false;
    }
}

// Procura o fioluz mais próximo que ainda não foi usado
with (fioluz) {
    if (botao_dono == noone && point_distance(x, y, other.x, other.y) < raio) {
        botao_dono = other.id;
        other.meu_fioluz = id;
        visible = false;
    }
}
