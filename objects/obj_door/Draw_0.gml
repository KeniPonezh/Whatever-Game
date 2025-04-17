draw_sprite_ext(sprite_index,image_index,xskin,yskin,image_xscale,image_yscale,0,c_white,1)

var debug_text, debug_result;
debug_text = ["X", "y", "set X", "set Y","set Id","set X Offset", "set Y Offset", "x Offset", "y Offset", "activated"];
debug_result = [string(x), string(y), string(set_x), string(set_y),string(set_id), string(set_x_offset), string(set_y_offset),string(x_offset), string(y_offset), string(activated)];

if (obj_player.show_debug){
    for(var i = 0; i<array_length(debug_result); i++){
        draw_text(x + 12, y + 12 + 14 * i, debug_text[i] + " : " + debug_result[i]);
    };
};