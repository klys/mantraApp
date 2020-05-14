/// login_facebook_to(username, name)

with(instance_create(x,y,objCookie_AuthFacebookFirstTimeCheckout)) {
    email = argument0;
    name = argument1;
}

room = roomSuccessAuthfacebookFirstTime;
