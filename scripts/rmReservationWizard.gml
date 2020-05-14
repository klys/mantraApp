instance_create(48,224,objReservationMainInfo)
instance_create(32,144,objReserverNow)
instance_create(32,320,objReserverTruOpenTable)
instance_create(0,80,objReservationStepBegin)
instance_create(32,400,objReserverByCall)
instance_create(320,80,objReservationStep1)
instance_create(640,80,objReservationStep2)
instance_create(960,80,objReservationStep3)
instance_create(1280,80,objReservationStep4)
instance_create(1920,80,objReservationStepEnd)
instance_create(1600,80,objReservationStep5)
with(instance_create(0,0,objStepPiece)) {
    xx = 115;
    yy = 125;
    step = 1;
}
with(instance_create(0,0,objStepPiece)) {
    xx = 135;
    yy = 125;
    step = 2; 
}
with(instance_create(0,0,objStepPiece)) {
    xx = 155;
    yy = 125;
    step = 3;
}
with(instance_create(0,0,objStepPiece)) {
    xx = 175;
    yy = 125;
    step = 4;
}
with(instance_create(0,0,objStepPiece)) {
    xx = 195;
    yy = 125;
    step = 5;
}
instance_create(464,288,objNumber)
instance_create(448,208,objNumberNext)
instance_create(448,352,objNumberPrev)
instance_create(736,288,objMonth)
instance_create(784,288,objDay)
instance_create(564,288,objYear)
instance_create(704,240,objMonthUp)
instance_create(704,336,objMonthDown)
instance_create(768,240,objDayUp)
instance_create(768,336,objDayDown)
instance_create(832,240,objYearUp)
instance_create(832,336,objYearDown)
instance_create(1120,272,objTimeSelector)
instance_create(1088,192,objTimeNext)
instance_create(1088,304,objTimePrev)
instance_create(1328,176,objTypeReservation)
instance_create(1328,256,objTypeReservation)
instance_create(1648,160,objLogInButton)
instance_create(1648,240,objSignUpButton)
instance_create(1648,320,objFacebookAuthButton)
instance_create(1648,400,objGoogleAuthButton)
