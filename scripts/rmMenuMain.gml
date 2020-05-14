with(instance_create(0,64,objBarElement_Titular)) {
    titulo = "In House Menu"
    titularDescription = "The Main Menu of Mantra Restaurant."
    quantity = 9;
    //sprite = sprAppetizer&#xA;
    roomToGo = roomMenuList;
}
with(instance_create(0,128,objBarElement_Titular)) {
    titulo = "Wine List"
    quantity = 11;
    titularDescription = "Taste the best wines.";
    //sprite = sprTandoor
    fondo = c_dkgray
    roomToGo = roomWineList
}
with(instance_create(0,192,objBarElement_Titular)) {
    titulo = "Chef's Corner"
    titularDescription = "The Best of Mantra!"
    quantity = 2;
    //sprite = sprChicken
    roomToGo = roomChefsCorner
}
