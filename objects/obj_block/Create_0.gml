event_inherited();
slot_id = noone;

function try_slot(){
	var target_slot = instance_nearest(x, y, obj_slot);
	
	if(target_slot != noone){
		var dist = point_distance(x, y, target_slot.x, target_slot.y);
		
		if(dist < 32 && !target_slot.is_occupied()){
			if(slot_id != noone){
				slot_id.obj_in_slot = noone;
			}
			
			slot_id = target_slot;
			target_slot.obj_in_slot = id;
			x = target_slot.x;
			y = target_slot.y;
			return;
		}
	}
	if(slot_id != noone){
		slot_id.obj_in_slot = noone;
		slot_id = noone;
	}
}