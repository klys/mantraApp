var perms = ds_list_create();
    ds_list_add( perms, "public_profile");
    ds_list_add(perms, "email")
    facebook_login(perms,fb_login_default);
    ds_list_destroy(perms);
