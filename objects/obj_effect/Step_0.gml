var cx, cy;
cx = camera_get_view_x(view_camera[view_current]);
cy = camera_get_view_y(view_camera[view_current]);


x+=xspd;
y+=yspd;

xspd+=acc;
yspd+=grav;

image_xscale = lerp(image_xscale,1,0.05);
image_yscale = lerp(image_yscale,1,0.05);
image_angle = lerp(image_angle,0,0.2);

if (y<cy-40 || y>cy+480+40) instance_destroy();
if (x<cx-40 || x>cx+846+40) instance_destroy();
