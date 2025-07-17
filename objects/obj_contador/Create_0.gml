if (variable_global_exists("tempo_salvo")) {
    tempo = global.tempo_salvo;
} else {
    tempo = 60; // valor inicial caso não tenha sido salvo ainda
}

alarm[0] = 60;
