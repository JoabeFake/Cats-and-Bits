draw_self()
draw_circle(x, y, 3, false);
//draw_text(x + 4, y, string(signal));

draw_circle_color(x, y, 5, signal ? c_lime : c_red, signal ? c_lime : c_red, false);
if (selected) {
    draw_circle_color(x, y, 8, c_yellow, c_yellow, false);
}