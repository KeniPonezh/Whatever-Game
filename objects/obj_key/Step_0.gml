rgb = make_color_hsv ((current_time / 20) mod 255,255,255)

if (place_meeting(x,y,obj_player)){
    with (instance_create_depth(x,bbox_bottom,-5,obj_effect)){
        sprite_index = spr_woah;
        image_index = 0;
        image_xscale = random_range(4,6);
        image_yscale = random_range(4,6);
        image_angle = random_range(-360,360);
        xsp=random_range(-2,2);
        yspd=random_range(-6,6);
        grav=random_range(-0.4,0.4);
        acc=random_range(-0.3,0.3);
        rgb=make_color_rgb(random_range(0,1000) mod 255,random_range(0,1000) mod 255,random_range(0,1000) mod 255);
    };
    audio_play_sound(sfx_collect,0,false)
    instance_destroy();
}
