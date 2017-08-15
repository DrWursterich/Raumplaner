///draw_index()
for(var i=0;i<windows_open;i++) {
    if (i==windows_open-1 && i!=0) {
        draw_set_alpha(.3);
        draw_rectangle(view_xview[0], view_yview[0], view_xview[0]+view_wview[0], view_yview[0]+view_hview[0], false);
        draw_set_alpha(1);
    }
    switch windows[i, ID] {
      case RAUM:
        draw_raum(i);
        break;
      case RAUM_GET_POLY:
        draw_raum_get_poly(i);
        break;
      case QUESTION_UNSAVED:
        draw_question_unsaved(i);
        break;
      default:
        break;
    }
}
