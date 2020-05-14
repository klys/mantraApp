/// OnlineOrder_editElement(id)

var description = "";
var price_ = 0;
var quantity_ = 0;
var name_ = "";
var instruc_ = "";
var selection_ = "";

with(objOnlineOrder_System) {
    description = desc[| argument0];
    price_ = price[| argument0];
    quantity_ = quantity[| argument0];
    name_ = items[| argument0];
    instruc_ = instr[| argument0];
    selection_ = select[| argument0];
}

with(instance_create(0,0,objCookie_editTakeOutFood)) {
    ide = argument0;
    name = name_;
    ingredients = description;
    quantity = quantity_;
    price = price_;
    instructions = instruc_;
    selection = selection_;
}

room = roomFoodTakeOut
