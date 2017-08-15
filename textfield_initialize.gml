///textfield_initialize()

textfield_count = 0;

//RAUM_GET_POLY
var xx = RAUM_GET_POLY_X;
var yy = RAUM_GET_POLY_Y;
var ww = RAUM_GET_POLY_W;
var hh = RAUM_GET_POLY_H;
var fh = (hh-160)/(FIELDS_PER_SITE/2)
textfield_get_poly_raumname = textfield_create(xx+80, yy+10, xx+ww-80, yy+80, TEXTFIELD_MEDIUM, "", "Neuer Raum", fa_center, 6, 64);
//field-list
for (var i=0;i<20;i+=2) {
    field_list[i] = textfield_create(xx+10, yy+80+fh*i/2, xx+ww/2, yy+80+fh*(i/2+1), TEXTFIELD_SMALL, "", "CM", fa_right, 6, 8);
    field_list[i+1] = textfield_create(xx+ww/2, yy+80+fh*i/2, xx+ww-10, yy+80+fh*(i/2+1), TEXTFIELD_SMALL, "", "CM", fa_right, 6, 8);
}
