draw_set_halign(fa_center)
if (place_meeting(x,y,obj_player)) draw_text(x,y-95,"press A to activate")
draw_set_halign(fa_left)

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,rgb,1)

var debug_text, debug_result;
debug_text = ["x", "y", "id", "activated", "cooldown"];
debug_result = [string(x), string(y), string(set_id), string(activated), string(cooldown)];

if (obj_player.show_debug){
    for(var i = 0; i<array_length(debug_result); i++){
        draw_text(x + 12, y + 12 + 14 * i, debug_text[i] + " : " + debug_result[i]);
    };
};