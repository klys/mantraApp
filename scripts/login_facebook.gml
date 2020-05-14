/// login_facebook(login, name) 

var xx, yy;
xx = 1648;
yy = 160;
var xxx = 15;
show_debug_message("xx: "+string(xx)+" / yy: "+string(yy))

with(instance_create(xx+xxx,yy,objInputParent)) {
    ide = 4
    caption = "Name";
    text = argument1;
} 

with(instance_create(xx+xxx,yy+70,objInputParent)) {
    ide = 5
    caption = "Email"
    text = argument0
}

with(instance_create(xx+xxx,yy+70*2,objInputParent)) {
    ide = 1
    caption = "Number of People"
    text = objNumber.number;
    script = inputPeopleQ;
}

with(instance_create(xx+xxx,yy+70*3,objInputParent)) {
    ide = 2
    caption = "Date"
    text = getDate_fromUI() + " at " + getTime_fromUI();
    script = inputDate
}

with(instance_create(xx+xxx,yy+70*4,objInputParent)) {
    ide = 3
    caption = "Time"
    text = getTime_fromUI();
    script = inputTimeFirst
}

instance_create(xx,yy+70*5,objConfirmReservationButton)

//with(objLogInButton) instance_destroy()
//with(objSignUpButton) instance_destroy()
with(objFacebookAuthButton) instance_destroy()
with(objGoogleAuthButton) instance_destroy()
with(objMessageCentered) {
    if (string_count("social",text) != 0) instance_destroy()
}
