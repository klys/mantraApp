/// gb_activate(id)

with(objGlobalMenuButton) {
    image_index = 0
    image_blend = c_white
}

with(argument0) {
    var text = sprite_get_name(sprite_index);
    text = string_replace(text,"sprGB_","");
    metricar(text);
    image_blend = c_gray
    image_index = 1
}
