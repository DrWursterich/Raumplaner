///open_window(window_id)
var window_id = argument0;
var i = windows_open++;

windows[i, ID] = window_id;
windows[i, BUTTON_FOCUS] = 0;
write_focus = 0; // NEEDS WORK!

switch window_id {
  case RAUM:
    break;
  case RAUM_GET_POLY:
    windows[i, NAME] = "Raum";
    windows[i, MAX_SITE] = 1;
    windows[i, SITE] = 1;
    windows[i, FIELDS] = 3;
    break;
  case QUESTION_UNSAVED:
    question_answer = -1;
    break;
  default:
    show_message_async("window id not found");
    break;
}
