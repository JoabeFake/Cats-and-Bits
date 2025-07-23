event_inherited(); // mantém a herança, se usar

// Verifica se os conectores estão criados e possuem sinal definido
var has_signals = 
    connector_in1 != noone &&
    connector_in2 != noone &&
    connector_out != noone &&
    is_bool(connector_in1.signal) &&
    is_bool(connector_in2.signal);

// Se ambos os sinais forem booleanos válidos
if (has_signals) {
    var a = connector_in1.signal;
    var b = connector_in2.signal;

    // XNOR: verdadeiro se os sinais forem iguais
    connector_out.signal = !(a ^ b);
} else {
    // Se qualquer condição falhar, forçamos a saída para falso
    connector_out.signal = false;
}

// Atualiza a posição dos conectores ligados
array_foreach(attached, function(_item){
    var _x = lengthdir_x(_item.len, _item.dir + image_angle);
    var _y = lengthdir_y(_item.len, _item.dir + image_angle);

    _item.inst.x = x + _x;
    _item.inst.y = y + _y;
    _item.inst.image_angle = image_angle;
});

if (was_rejected) {
    if (instance_exists(rejected_from)) {
        var dist = point_distance(x, y, rejected_from.x, rejected_from.y);
        
        if (dist > 32) {
            speed = 0;
            was_rejected = false;
            rejected_from = noone;
        }
    } else {
        // Caso o slot tenha sido destruído
        speed = 0;
        was_rejected = false;
        rejected_from = noone;
    }
}