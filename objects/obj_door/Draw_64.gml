//if (!mostrar_indicadores) return;

// Calcula posição da porta na GUI
var tela_x = camera_get_view_x(view_camera[0]);
var tela_y = camera_get_view_y(view_camera[0]);

var porta_gui_x = x - tela_x;
var porta_gui_y = y - tela_y;

// Posição base de onde os ícones vão ser desenhados
var icon_x = porta_gui_x - (array_length(objetos) * 10); //30 + 20; //20 + 20; //10 + 20
var icon_y = porta_gui_y - 40; // Acima da porta

for (var i = 0; i < array_length(objetos); i++) {
    var obj = objetos[i];
    var desejado = estado_desejado[i];
    
    if (!instance_exists(obj)) continue;

    var sprite = obj.sprite_index;
    var subimg = obj.image_index;

    // Checa se está na condição certa
    var correto = (obj.signal == desejado);

    // Aplica transparência se não estiver correto
    if (correto) {
        draw_set_alpha(1);
    } else {
        draw_set_alpha(0.20);
    }

    // Desenha sprite pequeno (16x16 por exemplo)
    draw_sprite_ext(sprite, subimg, icon_x + (i * 10), icon_y, 0.3, 0.3, 0, c_white, 1);
}

draw_set_alpha(1); // Resetar alpha
