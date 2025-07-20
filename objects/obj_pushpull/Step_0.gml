scr_collision(obj_wall);
scr_collision(obj_pushpull);
scr_collision(obj_player);

var inst = instance_place(x, y, obj_pushpull);

if (inst != noone) {
    var pdir = point_direction(inst.x, inst.y, x, y);
    move_outside_all(pdir, 3);
}

x += x_speed;
y += y_speed;

scr_update_corners();