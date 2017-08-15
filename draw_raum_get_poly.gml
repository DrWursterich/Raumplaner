#define draw_raum_get_poly
///draw_raum_get_poly(raum_id)
var raum_id = argument0;
var active = windows_open-1==raum_id;

draw_set_color(c_navy);
draw_rectangle(RAUM_GET_POLY_X, RAUM_GET_POLY_Y, RAUM_GET_POLY_X+RAUM_GET_POLY_W, RAUM_GET_POLY_Y+RAUM_GET_POLY_H, false);
draw_set_color(c_black);
textfield_draw(textfield_get_poly_raumname, active, write_focus==1);
button_draw(button_get_poly_add, active);
button_draw(button_get_poly_exit, active);
/*
for (var i=0;i<windows[raum_id, FIELDS]; i++) {
    textfield_draw(field_list[i], active, write_focus==4+i);
}
*/
//scroll_draw(scroll_raum_get_poly_poly_list, RAUM_GET_POLY_X, RAUM_GET_POLY_Y, active)

button_draw(button_get_poly_cancel, active);
button_draw(button_get_poly_ok, active);

if (active) {
    switch question_answer {
      case 0:
        raum_poly_close();
        break;
      case 1:
        //raum_save_to_file();
        raum_reset();
        raum_set_poly(raum_id);
        break;
      default:
        break;
    }
    if (keyboard_check_pressed(vk_tab)) {
        if (keyboard_check(vk_shift)) {
            write_focus--;
        } else {
            if (write_focus == windows[raum_id, FIELDS]) {
                add_point();
            } else {
                write_focus++;
            }
        }
    }
    if (button_pressed(button_get_poly_exit)) {
        raum_poly_close();
    }
    if (button_pressed(button_get_poly_add)) {
        add_point();
    }
    if (button_pressed(button_get_poly_cancel)) {
        raum_poly_close();
    }
    if (button_pressed(button_get_poly_ok)) {
        if (fields_filled(windows[raum_id, FIELD_CONTENT], windows[raum_id, FIELDS])==-1) {
            if (raum_exists && !raum_saved) {
                open_window(QUESTION_UNSAVED);
            } else {
                raum_set_poly(raum_id);
            }
        } else {
            show_message_async("incomplete data");
        }
    }
    if (mouse_check_button_pressed(mb_left)) { //--------------------------------------------field-list
        if (mouse_at(RAUM_GET_POLY_X+10, RAUM_GET_POLY_Y+50, RAUM_GET_POLY_X+RAUM_GET_POLY_W-10, RAUM_GET_POLY_Y+RAUM_GET_POLY_H-50)) {
            var mouse_at_field = 2*((mouse_y-(xx+50)) div ((RAUM_GET_POLY_H-100)/10))
                               + ((mouse_x-(xx+10)) div ((RAUM_GET_POLY_W-20)/2));
            if (mouse_at_field*windows[raum_id, SITE]<=windows[raum_id, FIELDS]) {
                write_at = mouse_at_field*windows[raum_id, SITE];
            }
        }
    }
}

#define fields_filled
///fields_filled(list, max_field)
var list = argument0;
var max_field = argument1;
var firsterror = -1;
for (var i=0;i<max_field;i++) {
    var content = field_list[i];
    if (content == "" || !is_int32(content)) {
        firsterror = i;
        i = max_field;
    }
}
return firsterror;

#define raum_poly_close
///raum_poly_close()
site = 0;
write_at = 0;
close_window();

#define raum_set_poly
///raum_set_poly(raum_id);
var raum_id = argument0;
raum[OTHER, NAME] = windows[raum_id, NAME];
raum[OTHER, POLY] = windows[raum_id, FIELDS]/2;
for (var i=0;i<raum[OTHER, POLY];i++) {
    raum[POINT+i, X] = field_list[i*2];
    raum[POINT+i, Y] = field_list[i*2+1];
}
raum_poly_close();

#define add_point
///add_point()
var firstempty = fields_filled(windows[raum_id, FIELD_CONTENT], windows[raum_id, FIELDS]);
if (firstempty == -1 && windows[raum_id, FIELDS] < MAX_FIELDS-1) {
    var i = ++windows[raum_id, FIELDS];
    field_list[i] = textfield_create(xx+10, yy+50+fh*i, xx+ww/2, yy+50+fh*(i+1), TEXTFIELD_SMALL, "", "CM", fa_right, 6, 8);
    i = ++windows[raum_id, FIELDS];
    field_list[i] = textfield_create(xx+ww/2, yy+50+fh*i, xx+ww-10, yy+50+fh*(i+1), TEXTFIELD_SMALL, "", "CM", fa_right, 6, 8);
    windows[raum_id, MAX_SITE] += (windows[raum_id, FIELDS] div FIELDS_PER_SITE) == 0;
    windows[raum_id, SITE] = windows[raum_id, MAX_SITE];
    write_focus = windows[raum_id, Fields]-1;
} else {
    write_focus = firstempty;
}
