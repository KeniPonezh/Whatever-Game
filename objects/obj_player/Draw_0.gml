var cx, cy;
cx = camera_get_view_x(view_camera[view_current]);
cy = camera_get_view_y(view_camera[view_current]);

xskin = lerp(xskin,x,0.2);
yskin = lerp(yskin,y,0.2);

draw_sprite_ext(sprite_index,image_index,xskin,yskin,xsc + dsin(current_time / 12) * 0.1, ysc + dsin(current_time / 24) * 0.1,0,rgb,1);

//debug
var debug_text, debug_result;
debug_text = ["x", "y", "skin X", "skin Y", "skin Xscale","skin Yscale","rgb", "camera X", "camera Y", "input Hold", "instances", "fps"];
debug_result = [string(x), string(y), string(xskin), string(yskin),string(xsc),string(ysc),string(rgb), string(cx), string(cy), string(Input.input_hold), string(instance_count), string(fps)];

if (show_debug){
    for(var i = 0; i<array_length(debug_result); i++){
        draw_text(cx + 12, cy + 12 + 14 * i, debug_text[i] + " : " + debug_result[i]);
    };
};