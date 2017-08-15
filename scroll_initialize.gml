///scroll_initialize();
scroll_count = 0;
scroll_drag = -1;

//RAUM_GET_POLY
var srf = surface_create(width, height); /*
surface_set_target(srf);
    draweverythinginhere();
surface_reset_target();  */
scroll_raum_get_poly_poly_list = scroll_create(srf, width, height);

/*
    ich hoffe surfaces werden nicht by-reference kopiert
    wenn, dann muss ich die surfaces in ebenfalls globalen variablen speichern
    etwa 'surface_scroll_raum_get_poly_poly_list'
    wichtig: die surfaces müssen nacher noch (irgendwie) gelöscht werden
    mit globalen variablen einfach hardcoden und ohne
    durch alle scrolls loopen
*/
