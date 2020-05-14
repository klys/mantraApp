/// AddElementToCart(quantity, name, price, ingredients, instructions, selection)
// to tranfer
    var quantit = argument0;
    var name = argument1;
    var priceu = argument2;
    var ingr = argument3;
    var instruc = argument4;
    var selection = argument5;
    var subtot = priceu * quantit;
    
    with(objOnlineOrder_System) {
        ds_list_add(items, name)
        ds_list_add(quantity, quantit)
        ds_list_add(price, priceu)
        ds_list_add(subtotal, subtot)
        ds_list_add(instr, instruc)
        ds_list_add(select, selection)
        ds_list_add(desc, ingr)
        event_user(0)
    }
    
    with(objFloatingCartButton) {
        items++;
        xx = 50;
        image_index = 1;
    }
