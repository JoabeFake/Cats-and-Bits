selected = position_meeting(mouse_x, mouse_y, id);

// Mostrar ou esconder objetos vinculados
with (fiobotao) {
    if (botao_dono == other.id) {
        visible = other.selected;
    }
}

with (fioluz) {
    if (botao_dono == other.id) {
        visible = other.selected;
    }
}
