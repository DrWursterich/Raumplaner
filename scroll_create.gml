///scroll_create(surface, display_width, display_height)
var sf = argument0;
var ww = argument1;
var hh = argument2;

if (!surface_exists(sf)) {
    show_message_async("scroll-fenster konnte nicht erstellt werden: surface does not exist");
    return -1;
}

scroll_drag = -1;

var scroll_id = scroll_count++;

scrolls[scroll_id, SURFACE] = sf;
scrolls[scroll_id, WIDTH] = ww;
scrolls[scroll_id, HEIGHT] = hh;
scrolls[scroll_id, CUR_HEIGHT] = 0;

return scroll_id;
