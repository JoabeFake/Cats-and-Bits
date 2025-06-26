/// @function set_wire_directions_8dir(angle)
/// @description Define dir_a e dir_b com base no ângulo mais próximo entre 8 direções
/// @arg angle (graus)

function set_wire_directions_8dir(angle) {
    var ang = (round(argument0) + 360) mod 360;

    var angles = [0, 45, 90, 135, 180, 225, 270, 315]; // direita, NE, cima, NW, esquerda, SW, baixo, SE
    var dirs = [
        [1, 0],   // 0   → E
        [1, -1],  // 45  → NE
        [0, -1],  // 90  → N
        [-1, -1], // 135 → NW
        [-1, 0],  // 180 → W
        [-1, 1],  // 225 → SW
        [0, 1],   // 270 → S
        [1, 1]    // 315 → SE
    ];

    var closest = 0;
    var min_diff = 360;

    for (var i = 0; i < array_length(angles); i++) {
        var diff = abs(angle_difference(ang, angles[i]));
        if (diff < min_diff) {
            min_diff = diff;
            closest = i;
        }
    }

    // Retorna direções opostas
    return [
        [-dirs[closest][0], -dirs[closest][1]], // dir_a (lado oposto)
         dirs[closest]                          // dir_b
    ];
}
