event_inherited(); // Mantém o comportamento herdado, se houver

// Criação dos conectores (2 de entrada, 1 de saída)
connector_in1 = instance_create_layer(x - 16, y - 16, "Gates", obj_connector);
connector_in2 = instance_create_layer(x - 16, y + 16, "Gates", obj_connector);
connector_out = instance_create_layer(x + 16, y, "Gates", obj_connector);

// Inicializa os sinais como falsos para evitar que comecem acesos
connector_in1.signal = false;
connector_in2.signal = false;
connector_out.signal = false;

// Define a relação de propriedade e tipo
connector_in1.owner = id;
connector_in2.owner = id;
connector_out.is_input = false;
connector_out.owner = id;

// Lista para armazenar os conectores anexados à porta
attached = [];

// Função para adicionar um conector à lista e calcular sua distância e direção
add_attached = function (_inst) {
    array_push(attached, {
        inst: _inst,
        len: point_distance(x, y, _inst.x, _inst.y),
        dir: point_direction(x, y, _inst.x, _inst.y)
    });
}

// Adiciona os 3 conectores à lista
add_attached(connector_in1);
add_attached(connector_in2);
add_attached(connector_out);