for(var i = 0; i < 20; i++) {
    var but1 = get_pinbutton();
    while(but1 == noone) {
        but1 = get_pinbutton();
    }
    var but2 = get_pinbutton();
    while(but2 == noone) {
        but2 = get_pinbutton();
    }
    exchange_pins(but1, but2)
}
