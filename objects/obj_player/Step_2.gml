array_foreach(attached, function(_item){
	var _x = lengthdir_x(_item.len, _item.dir + image_angle);
	var _y = lengthdir_y(_item.len, _item.dir + image_angle);
	
	_item.inst.x = x + _x;
	_item.inst.y = y + _y;
	_item.inst.image_angle = image_angle;
})

scr_collision(obj_wall);

var inst = instance_place(x, y, obj_pushpull);

if (inst != noone) {
    var pdir = point_direction(inst.x, inst.y, x, y);
    move_outside_all(pdir, spd);
}

//Solução Temporária pra não ficar preso na porta CORRIGIR DEPOIS

var inst = instance_place(x, y, obj_wall);

if (inst != noone) {
    var pdir = point_direction(inst.x, inst.y, x, y);
    move_outside_all(pdir, spd);
}

scr_collision(obj_pushpull);

x += x_speed;
y += y_speed;