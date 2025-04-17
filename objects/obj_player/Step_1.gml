title_card_timer++

if (title_card_timer<60){
    title_card_x = lerp(title_card_x,20,0.1)
}

else if (title_card_timer>90){
    title_card_x -= 0.2 * (title_card_timer / 90) * 15
}

switch global.level_id{
    case 0:
        title_card_name = "Boingy boing!"
    break
}

if (keyboard_check_pressed(ord("R"))) show_debug = (show_debug+1) mod 2