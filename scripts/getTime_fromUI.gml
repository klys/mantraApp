
var time = "";

if (instance_exists(objTimeSelector)) {

    with(objTimeSelector) {
        time = ds_list_find_value(times, actual);    
    }

}

return time;
