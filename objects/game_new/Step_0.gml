selected = position_meeting(mouse_x, mouse_y, id);

// Mostrar fiobotao (esquerda)
with (fiobotao) {
    if (botao_dono == other.id) {
        visible = other.selected;
    }
}

// Mostrar fioluz (direita)
with (fioluz) {
    if (botao_dono == other.id) {
        visible = other.selected;
    }
}
