///textfield_draw(textfield, active, focus)
var textfield = argument0;
var active = argument1;
var focus = argument2;

var x1 = textfields[textfield, X1];
var y1 = textfields[textfield, Y1];
var x2 = textfields[textfield, X2];
var y2 = textfields[textfield, Y2];
var textfield_sprite = textfields[textfield, STYLE];
var alt_text = textfields[textfield, ALT_TEXT];
var text_scale = textfields[textfield, SCALE];
var halign = textfields[textfield, HALIGN];
var max_length = textfields[textfield, MAX_LENGTH];
var hover = active && mouse_at(x1, y1, x2, y2);

draw_sprite_ext(textfield_sprite, 0+hover, x1, y1, (x2-x1)/sprite_get_width(textfield_sprite),
                (y2-y1)/sprite_get_height(textfield_sprite), 0, c_white, 1);
draw_sprite_ext(textfield_sprite, 2+hover, x1, y1, (x2-x1)/sprite_get_width(textfield_sprite),
                1, 0, c_white, 1);
draw_sprite_ext(textfield_sprite, 4+hover, x2-sprite_get_width(textfield_sprite), y1,
                1, (y2-y1)/sprite_get_height(textfield_sprite), 0, c_white, 1);
draw_sprite_ext(textfield_sprite, 6+hover, x1, y2-sprite_get_height(textfield_sprite),
                (x2-x1)/sprite_get_width(textfield_sprite), 1, 0, c_white, 1);
draw_sprite_ext(textfield_sprite, 8+hover, x1, y1, 1, (y2-y1)/sprite_get_height(textfield_sprite),
                0, c_white, 1);
draw_sprite(textfield_sprite, 10+hover, x1, y1);
draw_sprite(textfield_sprite, 12+hover, x2-sprite_get_width(textfield_sprite), y1);
draw_sprite(textfield_sprite, 14+hover, x2-sprite_get_width(textfield_sprite), y2-sprite_get_height(textfield_sprite));
draw_sprite(textfield_sprite, 16+hover, x1, y2-sprite_get_height(textfield_sprite));

switch halign {
    case fa_left:
        var fa = .1;
        break;
    case fa_center:
        var fa = .5;
        break;
    case fa_right:
        var fa = 1; //something fishy is going on here...
        break;
    default:
        show_error("halign wrong", true);
        break;
}

if (focus) {
    write_string(textfields[textfield, TEXT], max_length)
} else {
    if (string_length(textfields[textfield, TEXT])==0) {
        draw_text_font(x1+(x2-x1)*fa, (y1+y2)/2, alt_text, text_scale, halign, c_black);
    } else {
        draw_text_font(x1+(x2-x1)*fa, (y1+y2)/2, textfields[textfield, TEXT], text_scale, halign, c_black);
    }
}
