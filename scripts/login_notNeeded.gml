var xx, yy;
    xx = 1648;
    yy = 160;
var xxx = 15;
    
    with(instance_create(xx+xxx,yy,objInputParent)) {
    caption = "People"
    ide = 1
    text = objNumber.number;
    script = inputPeopleQ;
    }
    instance_create(x,y,objListener_PeopleQuantity)
    
    with(instance_create(xx+xxx,yy+70,objInputParent)) {
        ide = 2
        caption = "Date"
        text = getDate_fromUI();
        script = inputDate
    }
    
    instance_create(x,y,objListener_DateNtime)
    
    with(instance_create(xx+xxx,yy+70*2,objInputParent)) {
        ide = 3
        caption = "Time"
        text = getTime_fromUI();
        script = inputTimeFirst
    }
    
    //instance_create(x,y,objListener_KindReservation)
    
    
    with(objFacebookAuthButton) instance_destroy()
    with(objGoogleAuthButton) instance_destroy()
    with(objMessageCentered) {
        if (ide == 1) instance_destroy()
    }
    
    instance_create(xx,yy+70*3,objDoneReservingAgain)
