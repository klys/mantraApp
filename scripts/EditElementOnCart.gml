/// EditElementOnCart (ide, quantity, instructions, selection)

var newquan = argument1;
var ide = argument0;
var instructions_ = argument2;
var selection_ = argument3;


with(objOnlineOrder_System) {
    instr[| ide] = instructions_;
    select[| ide] = selection_;
    quantity[| ide] = newquan;
    subtotal[| ide] = quantity[| ide] * price[| ide];
    event_user(0)
    
}
