var true_x, true_y
true_x = set_x + x_offset
true_y = set_y + y_offset

x = true_x
y = true_y

xskin = lerp(xskin,x,0.5)
yskin = lerp(yskin,y,0.5)
