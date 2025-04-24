for(var i = 0;i<button_amount;i++){
    var button_names
    button_names = ["Start","Options","Leave"]
        
    //draw_text(16,SCREEN_HEIGHT / 2 + 18 * i,button_names[i])
    
    for(var i_2 = 0; i_2 < string_length(button_names[i]); i_2++){ 
        draw_text(24 + (14 * i_2) + (8 * dcos((current_time/-4)+(8+i)*i_2)),SCREEN_HEIGHT / 2 + 36 * i + (8 * dsin((current_time/-4)+(8+i)*i_2)),string_char_at(button_names[i], i_2 + 1));
	};
}