/// exchange_pins(obj1, obj2)

var aux = argument0.val;
argument0.val = argument1.val;
argument1.val = aux;
/*
with(argument0) {
    show = val;
}

with(argument1) {
    show = val;
}
*/
