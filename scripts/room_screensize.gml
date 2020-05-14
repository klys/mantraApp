show_debug_message("(DEBUG)room_screensize ejecutado!")
show_debug_message("display_get_h: "+string(display_get_height()))
show_debug_message("display_get_w: "+string(display_get_width()))
show_debug_message("window_get_h: "+string(window_get_height()))
show_debug_message("window_get_w: "+string(window_get_width()))

global.altura = display_get_height();
global.anchura = display_get_width();
room_height = global.altura;
room_width = global.anchura;
view_hport[0] = global.altura;
view_wport[0] = global.anchura;
view_hview[0] = global.altura;
view_wview[0] = global.anchura;
