///textfield_create(x1, y1, x2, y2, style, text, alt_text, halign, text_size, max_length)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var style = argument4;
var text = argument5;
var alt_text = argument6;
var halign = argument7;
var text_size = argument8;
var max_length = argument9;

if (textfield_count == MAX_TEXTFIELDS) {
    show_message_async("maximal ammount of textfields reached");
    exit;
}

switch style {
  case TEXTFIELD_BIG:
    textfield_sprite = sTextfieldBig;
    break;
  case TEXTFIELD_MEDIUM:
    textfield_sprite = sTextfieldMedium;
    break;
  case TEXTFIELD_SMALL:
    textfield_sprite = sTextfieldSmall;
    break;
  default:
    break;
}

textfields[textfield_count, X1] = x1;
textfields[textfield_count, Y1] = y1;
textfields[textfield_count, X2] = x2;
textfields[textfield_count, Y2] = y2;
textfields[textfield_count, STYLE] = textfield_sprite;
textfields[textfield_count, TEXT] = text;
textfields[textfield_count, ALT_TEXT] = alt_text;
textfields[textfield_count, SCALE] = text_size;
textfields[textfield_count, HALIGN] = halign;
textfields[textfield_count, MAX_LENGTH] = max_length;

return textfield_count++;
