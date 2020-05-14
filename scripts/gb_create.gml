for(var i = 0; i <= 5; i++)
with(instance_create(x,y,objGlobalMenuButton)) {
    yy = 50 + ( i * 40);
    switch(i) {
        case 0:
            sprite_index = sprGB_Home;
            script = gb_home
        break;
        case 1:
            sprite_index = sprGB_Menu;
            script = gb_menu
        break;
        //case 1:
        //    sprite_index = sprGB_AboutMantra
        //    script = gb_aboutmantra
        //break;
        //case 2:
        //    sprite_index = sprGB_InHouseMenu;
        //    script = gb_inhousemenu
        //break;
        //case 3:
        //    sprite_index = sprGB_WineList;
        //    script = gb_WineList
        //break;
        //case 4:
        //    sprite_index = sprGB_ChefsCorner;
        //    script = gb_ChefsCorner
        //break;
        case 3:
            sprite_index = sprGB_Gallery
            script = gb_gallery
        break;
        case 4:
            sprite_index = sprGB_Reservation;
            script = gb_ReserveNow
        break;
        //case 6:
        //    sprite_index = sprGB_ManageReservation;
        //    script = gb_ManageReservation
        //break;
        case 2:
            sprite_index = sprGB_TakeOutMenu;
            script = gb_TakeOutMenu
        break;
        //case 8:
       //     sprite_index = sprGB_CheckOut;
       //     script = gb_CheckOut
        //break;
        //case 8:
        //    sprite_index = sprGB_MantraOffers;
        //    script = gb_home
        break;
        case 5:
            sprite_index = sprGB_ContactUs;
            script = gb_ContactUs
        break;
        case 6:
            sprite_index = sprGB_MantraOffers;
            script = gb_mantraOffers
        break;
        case 7:
            sprite_index = sprGB_MyKarma;
            script = gb_MyKarma
        break
        //case 10:
        //    sprite_index = sprGB_FindMantra;
        //    script = gb_LocalizeMantra
        //break;
        //case 12:
        //    sprite_index = sprGB_Admin
        //    script = gb_admin
        //break;
    }
}
