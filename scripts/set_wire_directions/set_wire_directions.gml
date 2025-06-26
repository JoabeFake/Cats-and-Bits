/// @function set_wire_directions(angle)
/// @description Define dir_a e dir_b com base no ângulo mais próximo
/// @arg angle (em graus)

function set_wire_directions(angle) {
    var ang = (round(argument0) + 360) mod 360;

    // Direção mais próxima entre 0°, 90°, 180°, 270°
    var closest = 0;
    var min_diff = 360;

    var angles = [0, 90, 180, 270];
    var dirs = [
        [-1, 0], [0, -1], [1, 0], [0, 1]  // esquerda, cima, direita, baixo
    ];

    for (var i = 0; i < array_length(angles); i++) {
        var diff = abs(angle_difference(ang, angles[i]));
        if (diff < min_diff) {
            min_diff = diff;
            closest = i;
        }
    }

    // Retorna as duas direções opostas
    return [
        [-dirs[closest][0], -dirs[closest][1]], // dir_a
         dirs[closest]                          // dir_b
    ];
}
