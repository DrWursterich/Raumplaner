///cam_move()
if (mouse_check_button_pressed(button_cam_drag)) {
    cam_drag = true;
    cam_drag_start_x = window_mouse_get_x();
    cam_drag_start_y = window_mouse_get_y();
    view_drag_start_x = view_xview[0];
    view_drag_start_y = view_yview[0];
}
if (mouse_check_button_released(button_cam_drag)) {
    cam_drag = false;
    cam_drag_start_x = 0;
    cam_drag_start_y = 0;
    view_drag_start_x = 0;
    view_drag_start_y = 0;
}
if (cam_drag) {
    view_xview[0] = view_drag_start_x + (cam_drag_start_x - window_mouse_get_x());
    view_yview[0] = view_drag_start_y + (cam_drag_start_y - window_mouse_get_y());
}

if (mouse_wheel_down()) {
    view_xview[0] -= (zoom_faktor*16)/2;
    view_yview[0] -= (zoom_faktor*9)/2;
    view_wview[0] += zoom_faktor*16;
    view_hview[0] += zoom_faktor*9;
}
if (mouse_wheel_up()) {
    view_xview[0] += (zoom_faktor*16)/2;
    view_yview[0] += (zoom_faktor*9)/2;
    view_wview[0] -= zoom_faktor*16;
    view_hview[0] -= zoom_faktor*9;
}
