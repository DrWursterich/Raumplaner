///initialize()
//views
view_xview[0] = 0;
view_yview[0] = 0;
view_wview[0] = 1920;
view_hview[0] = 1080;

//controls
cam_drag = false;
cam_drag_start_x = 0;
cam_drag_start_y = 0;
view_drag_start_x = 0;
view_drag_start_y = 0;
zoom_faktor = 4;

//buttons
button_cam_drag = mb_middle;
button_exit = vk_escape;
button_accept = vk_enter;
button_left = vk_left;
button_right = vk_right;
button_up = vk_up;
button_down = vk_down;

//other
windows_open = 0;
most_windows = 0;
question_answer = -1;
raum[OTHER, POLY] = 3;

//drawing
draw_set_alpha(1);
draw_set_color(c_black);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);

//scripts
button_initialize();
textfield_initialize();
raum_reset();
open_window(RAUM);
