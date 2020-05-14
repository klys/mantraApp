var map = argument0;
//...show the response
var currentKey, currentValue;
var msg="";
//var newmap = ds_map_create();
currentKey = ds_map_find_first((map));                                          // Get the first map from within the response map
while (ds_map_exists(map, currentKey))                                        // Use "while" to loop through the maps
{
    currentValue = ds_map_find_value(map, currentKey);                        // Get the different key/value pairs
    if( currentKey != "response_text")
    {
        msg = msg + string(currentKey) + ": " + string(currentValue) + "#";
        //ds_map_add(newmap, currentKey, currentValue);
    }
    currentKey = ds_map_find_next(map, currentKey);                           // Get the next map key
}
//show_message_async(msg);
show_message(msg);
