cooldown = max(cooldown-1,0)

if (cooldown=0 && Input.press_a && place_meeting(x,y,obj_player)){
    audio_play_sound(sfx_collect,0,false)
    cooldown = 30
    activated = (activated + 1) mod 2
    rgb = make_color_rgb(random_range(0,1000) mod 255,random_range(0,1000) mod 255,random_range(0,1000) mod 255);
}

switch activated{
    case 0:
        image_xscale = -1
    break
    case 1 :
        image_xscale = 1
    break
}