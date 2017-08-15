///button_draw(button, active)
var button = argument0;
var active = argument1;

var x1 = buttons[button, X1];
var y1 = buttons[button, Y1];
var x2 = buttons[button, X2];
var y2 = buttons[button, Y2];
var button_sprite = buttons[button, STYLE];
var icon = buttons[button, ICON];
var scale = buttons[button, SCALE];
var str = buttons[button, TEXT];
var hover = active && mouse_at(x1, y1, x2, y2);

draw_sprite_ext(button_sprite, 0+hover, x1, y1, (x2-x1)/sprite_get_width(button_sprite),
                (y2-y1)/sprite_get_height(button_sprite), 0, c_white, 1);
draw_sprite_ext(button_sprite, 2+hover, x1, y1, (x2-x1)/sprite_get_width(button_sprite),
                1, 0, c_white, 1);
draw_sprite_ext(button_sprite, 4+hover, x2-sprite_get_width(button_sprite), y1,
                1, (y2-y1)/sprite_get_height(button_sprite), 0, c_white, 1);
draw_sprite_ext(button_sprite, 6+hover, x1, y2-sprite_get_height(button_sprite),
                (x2-x1)/sprite_get_width(button_sprite), 1, 0, c_white, 1);
draw_sprite_ext(button_sprite, 8+hover, x1, y1, 1, (y2-y1)/sprite_get_height(button_sprite),
                0, c_white, 1);
draw_sprite(button_sprite, 10+hover, x1, y1);
draw_sprite(button_sprite, 12+hover, x2-sprite_get_width(button_sprite), y1);
draw_sprite(button_sprite, 14+hover, x2-sprite_get_width(button_sprite), y2-sprite_get_height(button_sprite));
draw_sprite(button_sprite, 16+hover, x1, y2-sprite_get_height(button_sprite));

var content_width = string_width(str);
if (icon!=noone) {
    content_width += sprite_get_width(sIcons)*scale;
    draw_sprite_ext(sIcons, icon, x1+(x2-x1)/2-content_width/2, (y1+y2-sprite_get_height(sIcons)*scale)/2, scale, scale, 0, c_white, 1);
}
var x_content = (x1+x2-content_width)/2+(sprite_get_width(sIcons)*scale)*(icon!=noone);
draw_text_font(x_content, (y1+y2)/2, str, scale, fa_left, c_black);
