/// OnlineOrder_removeElement(ide)
var ide = argument0;
with(objOnlineOrder_System) {
    ds_list_delete(items, ide);
    ds_list_delete(desc, ide);
    ds_list_delete(quantity, ide);
    ds_list_delete(price, ide);
    ds_list_delete(subtotal, ide);
    event_user(0)
}
