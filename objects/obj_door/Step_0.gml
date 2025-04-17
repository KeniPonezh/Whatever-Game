if (set_id = obj_lever.set_id){
    activated = obj_lever.activated
}

if (activated = 0){
    x_offset = 0
    y_offset = 0
}

if (activated = 1){
    x_offset = set_x_offset
    y_offset = set_y_offset
}