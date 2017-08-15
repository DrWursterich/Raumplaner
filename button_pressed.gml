///button_pressed(button)
var button = argument0;

var ret = false;

if (mouse_check_button_pressed(mb_left)) {
    if (mouse_at(buttons[button, X1], buttons[button, Y1],
                 buttons[button, X2], buttons[button, Y2])) {
        ret = true;
    }
}

return ret;
