///button_create(x1, y1, x2, y2, style, icon, icon_scale, text)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var style = argument4;
var icon = argument5;
var scale = argument6;
var text = argument7;
var button_sprite = noone;

if (button_count == MAX_BUTTONS) {
    show_message_async("maximal ammount of buttons reached");
    exit;
}

switch style {
  case BUTTON_SMALL:
    //gms-like menu button
    button_sprite = sButtonSmall;
    break;
  case BUTTON_MEDIUM:
    //dialog-like answer button
    button_sprite = sButtonMedium;
    break;
  case BUTTON_BIG:
    //dunno yet
    button_sprite = sButtonBig;
    break;
  default:
    break;
}

buttons[button_count, X1] = x1;
buttons[button_count, Y1] = y1;
buttons[button_count, X2] = x2;
buttons[button_count, Y2] = y2;
buttons[button_count, STYLE] = button_sprite;
buttons[button_count, ICON] = icon;
buttons[button_count, SCALE] = scale;
buttons[button_count, TEXT] = text;

return button_count++; 

