///raum_create()
if (raum_exists && !raum_saved) {
    if (show_question("Willst du vorher speichern ?")) {
        //raum_save;
    }
}

raum_reset(false);
raum_exists = true;
raum_saved = false;

raum[X, 0] = get_integer("Punkt 1: X (in cm)", ".00")*UNIT_SCALE;
raum[Y, 0] = get_integer("Punkt 1: Y (in cm)", ".00")*UNIT_SCALE;
raum[X, 1] = get_integer("Punkt 2: X (in cm)", ".00")*UNIT_SCALE;
raum[Y, 1] = get_integer("Punkt 2: Y (in cm)", ".00")*UNIT_SCALE;
for (var i=2, j=i+1;i<j;i++) {
    raum[X, i] = get_integer("Punkt " + string(i+1) + ": X", ".00")*UNIT_SCALE;
    raum[Y, i] = get_integer("Punkt " + string(i+1) + ": Y", ".00")*UNIT_SCALE;
    raum[OTHER, POLY] = j;
    j += show_question("Noch einen Punkt hinzufÃ¼gen ?");
}
