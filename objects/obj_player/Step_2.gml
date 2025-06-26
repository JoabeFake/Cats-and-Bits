scr_collision(obj_wall);

var inst = instance_place(x, y, obj_block);

if (inst != noone) {
    var pdir = point_direction(inst.x, inst.y, x, y);
    move_outside_all(pdir, spd);
}

scr_collision(obj_pushpull);

x += x_speed;
y += y_speed;