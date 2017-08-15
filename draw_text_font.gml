///draw_text_font(x,y,string,size,halign,colour)
var xx = argument0;
var yy = argument1;
var text = argument2;
var size = argument3;
var halign = argument4;
var colour = argument5;
var char = 0;
var pos = 0;
var hspace = size*7;
var vspace = size*13;
var special_colour = colour;

switch halign {
    case fa_left:
        break;
    case fa_right:
        xx -= string_length(text)*hspace;
        break;
    case fa_center:
        xx -= string_length(text)*hspace*.5;
        break;
    default:
        show_error("Man... i thought you programmed this shit..", true);
        break;
}

for (var i=0;i<string_length(text);i++) {
    char = string_copy(text,1+i,1);
    switch (get_char(char)) {
        case 70:
            yy += vspace;
            pos = 0;
            break;
        case 90:
            switch special_colour {
                case c_orange:
                    special_colour = colour;
                    break;
                default:
                    special_colour = c_orange;
                    break;
            }
        case 88:
            pos += 1;
            break;
        default:
            draw_sprite_ext(sFont,get_char(char),xx+pos*hspace,yy,size,size,0,special_colour,1);
            pos += 1;
        break;
    }
}