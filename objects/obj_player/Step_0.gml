x = floor(x) 
y = floor(y)

var input_check, input_direction;
input_check = Input.press_up || Input.press_down || Input.press_left || Input.press_right;

if (Input.input_hold>0){
    input_direction = darctan2(Input.up - Input.down, Input.right - Input.left) + 90;
    if (!place_meeting(x+32*dsin(input_direction),y+32*dcos(input_direction),par_solid)){
        if (input_check || (Input.input_hold) mod 5 = 1){
            x += 32 * round(dsin(input_direction));
            y += 32 * round(dcos(input_direction));
            audio_play_sound(audio[random_range(0,array_length(audio))],0,false);
            xsc = 1 + 0.5 * abs(round(dsin(input_direction))) - 0.5 * abs(round(dcos(input_direction))); 
            ysc = 1 + 0.5 * abs(round(dcos(input_direction))) - 0.5 * abs(round(dsin(input_direction)));
            with (instance_create_depth(x,bbox_bottom,-5,obj_effect)){
                sprite_index = spr_funnytext;
                image_index = 0;
                image_xscale = random_range(0.2,1.2);
                image_yscale = random_range(0.2,1.2);
                image_angle = random_range(-360,360);
                xsp=random_range(-2,2);
                yspd=random_range(-6,6);
                grav=random_range(-0.4,0.4);
                acc=random_range(-0.3,0.3);
                rgb=make_color_rgb(random_range(0,1000) mod 255,random_range(0,1000) mod 255,random_range(0,1000) mod 255);
            };
            event_user(0);
        }
    }
};

xsc = lerp(xsc,1,0.2)
ysc = lerp(ysc,1,0.2)

cam_x = lerp(cam_x,x,0.2);
cam_y = lerp(cam_y,y,0.2) ;

var cam_true_x, cam_true_y
cam_true_x = floor(clamp(cam_x - (854 / 2),0,room_width - 854));
cam_true_y = floor(clamp(cam_y - (480 / 2),0,room_height - 480));

camera_set_view_pos(view_camera[view_current],cam_true_x,cam_true_y);