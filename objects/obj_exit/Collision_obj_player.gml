// Salvar tempo antes de mudar de sala
var contador = instance_find(obj_contador, 0);
if (instance_exists(contador)) {
    global.tempo_salvo = contador.tempo;
}

room_goto(target_room);
other.x = target_x;
other.y = target_y;
obj_camera.snap_to_player = true;
