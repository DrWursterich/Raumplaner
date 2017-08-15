///raum_reset()
raum_exists = false;
raum_saved = false;

var i = 0;
while (raum[OTHER, POLY]) {
    raum[X, i] = -1;
    raum[Y, i] = -1;
    i++; raum[OTHER, POLY]--;
}

raum[OTHER, POLY] = 3;
