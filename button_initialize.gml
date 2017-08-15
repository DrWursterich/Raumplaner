///button_initialize()
var icon_w = sprite_get_width(sIcons);
var icon_h = sprite_get_height(sIcons);

button_count = 0;

//RAUM
var xx = GUI_X;
var yy = GUI_Y;
var ww = GUI_W;
var hh = GUI_H;
button_raum_new = button_create(xx+5, yy+5, xx+icon_w*3+5, yy+icon_h*3+5, BUTTON_SMALL, ICON_NEW, 2, "");
button_raum_open = button_create(xx+icon_w*3+10, yy+5, xx+icon_w*6+10, yy+icon_h*3+5, BUTTON_SMALL, ICON_OPEN, 2, "");
button_raum_save = button_create(xx+icon_w*6+15, yy+5, xx+icon_w*9+15, yy+icon_h*3+5, BUTTON_SMALL, ICON_SAVE, 2, "");
button_raum_exit = button_create(xx+ww-icon_w*3-5, yy+5, xx+ww-5, yy+icon_h*3+5, BUTTON_SMALL, ICON_EXIT, 2, "");

//RAUM_GET_POLY
xx = RAUM_GET_POLY_X;
yy = RAUM_GET_POLY_Y;
ww = RAUM_GET_POLY_W;
hh = RAUM_GET_POLY_H;
button_get_poly_add = button_create(xx+10, yy+10, xx+70, yy+70, BUTTON_SMALL, ICON_ADD, 3, "");
button_get_poly_exit = button_create(xx+ww-70, yy+10, xx+ww-10, yy+70, BUTTON_SMALL, ICON_EXIT, 3, "");
button_get_poly_cancel = button_create(xx+ww/2+20, yy+hh-40, xx+ww/2+120, yy+hh-10, BUTTON_MEDIUM, noone, 1, "CANCEL");
button_get_poly_ok = button_create(xx+ww/2-120, yy+hh-40, xx+ww/2-20, yy+hh-10, BUTTON_MEDIUM, noone, 1, "OK");

//QUESTION_UNSAVED
xx = QUESTION_UNSAVED_X;
yy = QUESTION_UNSAVED_Y;
ww = QUESTION_UNSAVED_W;
hh = QUESTION_UNSAVED_H;
button_question_unsaved_exit = button_create(xx+ww-icon_w-70, yy+10, xx+ww-10, yy+icon_h+20, BUTTON_SMALL, ICON_EXIT, 2, "");
button_question_unsaved_yes = button_create(xx+ww/2-100, yy+hh-70, xx+ww/2-15, yy+hh-15, BUTTON_MEDIUM, noone, 3, "YES");
button_question_unsaved_no = button_create(xx+ww/2+15, yy+hh-70, xx+ww/2+100, yy+hh-15, BUTTON_MEDIUM, noone, 3, "NO");

