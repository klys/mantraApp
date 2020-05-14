/// getDate_fromUI()

var date = "";

if (instance_exists(objMonth)) {
    with(objMonth) {
        date = date + string(ds_list_find_value(months, mes))
    }
}

if (instance_exists(objDay)) {
    with(objDay) {
        date = date + "-"+ string(dia);
    }
}

if (instance_exists(objYear)) {
    with(objYear) {
        date = date +  "-" + string(year);
    }
}

return date;
