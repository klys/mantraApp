if (!instance_exists(objFloatingCartButton)) {

    instance_create(0,0,objFloatingCartButton)

} else {

    objFloatingCartButton.items = Cart_getQuantityItems();
    with(objFloatingCartButton) {
        if (items == 0) {
            image_index = 0;
        } else {
            image_index = 1;
        }
    }
    
}
