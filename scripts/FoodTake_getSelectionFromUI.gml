var selection = "";
if (instance_exists(objSelectionButton_TakeOutElement)) {
    switch(objSelectionButton_TakeOutElement.sprite_index) {
        case sprSelection0:
            if (image_index == 0) {
                selection = "Chicken";
            } else {
                selection = "Vegetables";
            }
        break;
        case sprSelection1:
            if (image_index == 0) {
                selection = "Plain";
            } else {
                selection = "Garlic";
            }
        break;
        case sprSelection2:
            if (image_index == 0) {
                selection = "Ground Lamb";
            } else {
                selection = "Goat Cheese";
            }
        break;
    }
}
show_debug_message("this was the selection: "+selection)
return selection;
