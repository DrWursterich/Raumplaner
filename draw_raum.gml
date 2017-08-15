///draw_raum(raum_id)
var raum_id = argument0;
var active = windows_open-1==raum_id;

if (raum_exists) {
    var preX = raum[X, 0];
    var preY = raum[Y, 0];
    for (var i=1;i<raum[OTHER, POLY];i++) {
        draw_line(preX, preY, raum[X, i], raum[Y, i]);
        preX = raum[X, i];
        preY = raum[Y, i];
    }
    draw_line(preX, preY, raum[X, 0], raum[Y, 0]);
}

draw_set_color(c_navy);
draw_rectangle(GUI_X, GUI_Y, GUI_X+GUI_W, GUI_Y+GUI_H, false);
draw_set_color(c_black);
button_draw(button_raum_new, active);
button_draw(button_raum_open, active);
button_draw(button_raum_save, active);
button_draw(button_raum_exit, active);

if (debug_mode) {cam_move();}  // DEBUGGIN PURPOSES!

if (active) {
    if (question_answer!=-1) {
        if (question_answer==1){
            game_save(get_string("Save as", ""));
        }
        question_answer = -1;
        game_end();
    }
    if (button_pressed(button_raum_new)) {
        open_window(RAUM_GET_POLY);
    }
    if (button_pressed(button_raum_exit)) {
        open_window(QUESTION_UNSAVED);
    }
}
