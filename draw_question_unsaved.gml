///draw_question_unsaved(raum_id)
var raum_id = argument0;
var active = windows_open-1==raum_id;

draw_set_color(c_dkgray);
draw_rectangle(QUESTION_UNSAVED_X, QUESTION_UNSAVED_Y, QUESTION_UNSAVED_X+QUESTION_UNSAVED_W, 
               QUESTION_UNSAVED_Y+QUESTION_UNSAVED_H, false);
draw_set_color(c_black);
button_draw(button_question_unsaved_exit, active);
button_draw(button_question_unsaved_yes, active);
button_draw(button_question_unsaved_no, active);
draw_text_font(QUESTION_UNSAVED_X+QUESTION_UNSAVED_W/2, QUESTION_UNSAVED_Y+QUESTION_UNSAVED_H/2-45, 
               "There are unsaved changes.", 3, fa_center, c_white); 
draw_text_font(QUESTION_UNSAVED_X+QUESTION_UNSAVED_W/2, QUESTION_UNSAVED_Y+QUESTION_UNSAVED_H/2+10, 
               "Save them ?", 3, fa_center, c_white);

if (active) {
    if (keyboard_check_pressed(vk_tab)) {
        windows[raum_id, BUTTON_FOCUS] = 1-windows[raum_id, BUTTON_FOCUS];
    }
    if (button_pressed(button_question_unsaved_exit) || 
        keyboard_check_pressed(button_exit)) {
        question_answer = -1;
    } else {
        if (button_pressed(button_question_unsaved_yes) ||
            (keyboard_check_pressed(button_accept) && windows[raum_id, BUTTON_FOCUS]==0)) {
            question_answer = 1;
        } else {
            if (button_pressed(button_question_unsaved_no) ||
                (keyboard_check_pressed(button_accept) && windows[raum_id, BUTTON_FOCUS]==1)) {
                question_answer = 0;
            } else {
                exit;
            }
        }
    }
    close_window();
}
