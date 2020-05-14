/// explode("delimiter", "string to split")

var list = ds_list_create();
var i = 1;
//show_message("se ejecuto explodeb64 con los argumentos [0]"+string(argument0)+", [1]"+string(argument1))
while (string_parse_single(argument1,argument0,i,true) != "") {
    var str = string_parse_single(argument1,argument0,i,true);
    //show_message(str)
    //var str2 = base64_decode(str);
    //show_message(str2)
    ds_list_add(list, str)
    i++;
}

return list;
