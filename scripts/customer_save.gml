var str, file;
 str = argument0;//encryp_msg(argument0);
 file = file_text_open_write("customer");
 file_text_write_string(file, str);
 file_text_close(file);
