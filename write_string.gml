///write_string(str,maxchar)
var str = argument0;
var maxchar = argument1;

if (string_char_at(keyboard_string, string_length(keyboard_string)) != '#') {
    switch keyboard_lastkey {
        case vk_backspace:
            str = string_delete(str, string_length(str), 1);
            break;
        default:
            if (string_length(str) < maxchar) {
                str += string_char_at(keyboard_string, string_length(keyboard_string));
            }
            break;
        }
    keyboard_string += '#';
}

return str;