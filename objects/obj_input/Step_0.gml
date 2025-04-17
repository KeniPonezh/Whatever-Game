if (!disable_input){
    up = keyboard_check(vk_up)
    down = keyboard_check(vk_down)
    left = keyboard_check(vk_left)
    right = keyboard_check(vk_right)
    a = keyboard_check(ord("A"))
    b = keyboard_check(ord("S"))
    
    press_up = keyboard_check_pressed(vk_up)
    press_down = keyboard_check_pressed(vk_down)
    press_left = keyboard_check_pressed(vk_left)
    press_right = keyboard_check_pressed(vk_right)
    press_a = keyboard_check_pressed(ord("A"))
    press_b = keyboard_check_pressed(ord("S"))
    
    enter = keyboard_check(vk_enter)
    
    if (up || down || left || right) input_hold ++
    else input_hold = 0
}
else{
    up = false
    down = false
    left = false
    right = false
    a = false
    b = false
    
    press_up = false
    press_down = false
    press_left = false
    press_right = false
    press_a = false
    press_b = false
    
    enter = false
    
    input_hold = 0
}