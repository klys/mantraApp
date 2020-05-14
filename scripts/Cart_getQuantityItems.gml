var quantity = 0;
with(objOnlineOrder_System) {
    quantity = ds_list_size(items);    
}
return quantity;
