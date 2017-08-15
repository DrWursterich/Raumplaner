///textfield_pressed(textfield)
var textfield = argument0;

var ret = false;

if (mouse_check_button_pressed(mb_left)) {
    if (mouse_at(textfields[textfield, X1], textfields[textfield, Y1],
                 textfields[textfield, X2], textfields[textfield, Y2])) {
        ret = true;
    }
}

return ret;
