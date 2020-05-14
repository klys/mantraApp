var type = "";
with(objTypeReservation) {
    if (image_index == 1) {
        switch(sprite_index) {
            case sprReservationParty: type = "Party"; break;
            case sprReservationTable: type = "Table"; break;
            case sprReservationSpecial: type = "Special"; break;
        }
    }
}

return type;
