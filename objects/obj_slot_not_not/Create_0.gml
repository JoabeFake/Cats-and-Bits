obj_in_slot = noone;

function slot_object(obj) {
    if (obj_in_slot == noone) {
        obj_in_slot = obj;
        obj.x = x;
        obj.y = y;

        // Para o gate se ele tiver speed
        if (variable_instance_exists(obj.id, "speed")) {
            obj.speed = 0;
        }

        return true;
    }
    return false;
}

function remove_object_from_slot() {
    if (obj_in_slot != noone) {
        // Dá um empurrão para o gate sair (opcional)
        if (variable_instance_exists(obj_in_slot.id, "speed")) {
            randomize();
            obj_in_slot.direction = random(360);
        }

        obj_in_slot = noone;
    }
}