draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, image_angle, image_blend, image_alpha);
draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fonte);
//draw_text(x, y, texto);

draw_text_transformed(x, y, texto, esc_text_x, esc_text_y, 0);

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);