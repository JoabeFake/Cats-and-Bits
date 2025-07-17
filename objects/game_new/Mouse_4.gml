with (obj_contador) {
    instance_destroy(); // mata contadores antigos, se houver
}
global.tempo_salvo = 60;
room_goto(Fase_1_1);