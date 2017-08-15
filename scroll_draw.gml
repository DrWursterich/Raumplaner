///scroll_draw(scroll_id, x, y, active)
var scroll_id = argument0;
var xx = argument1;
var yy = argument2;
var active = argument3;
var sf = scrolls[scroll_id, SURFACE];
var ww = scrolls[scroll_id, WIDTH];
var hh = scrolls[scroll_id, HEIGHT];
var sc_hh = scrolls[scroll_id, CUR_HEIGHT];

var sc_ww = 15;                             //scrollbalken hintergrund width
var sc_www = 10;                            //scrollbalken width
var sc_hhh = hh/surface_get_height(sf);     //scrollbalken length
var sensitivity;                            //scroll sensitivity

draw_surface_part(sf, 0, sc_hh, ww, hh, xx, yy);
draw_set_color(c_gray);
draw_rectangle(xx+ww, yy, xx+ww+sc_ww, yy+hh, false);
draw_set_color(c_darkgray);
draw_rectangle(xx+ww+(sc_ww-sc_www)/2, yy+sc_hh*hh, xx+ww+(sc_ww-sc_ww)/2+sc_www, yy+sc_hh*hh, false)
draw_set_color(c_black);

if (active) {
    if (mouse_at(xx, yy, xx+hh, yy+ww)) {
        if (mouse_check_button(mb_wheelup)) {
            sc_hh=clamp(sc_hh-sensitivity, 0, 100);
        }
        if (mouse_check_button(mb_wheeldown)) {
            sc_hh=clamp(sc_hh+sensitivity, 0, 100);
        }
    }
    if (mouse_check_button_pressed(mb_left)) {
        if (mouse_at(xx+ww+(sc_ww-sc_www)/2, yy+sc_hh*hh, xx+ww+(sc_ww-sc_ww)/2+sc_www, yy+sc_hh*hh)) {
            scroll_drag = window_mouse_get_y();
        }
    }
    if (scroll_drag != -1) {
        sc_hh=clamp(sc_hh+(window_mouse_get_y()-scroll_drag)/hh, 0, 100);
    }
    if (mouse_check_button_released(mb_left)) {
        scroll_drag = -1;
    }
}

scrolls[scroll_id, CUR_HEIGHT] = sc_hh;
