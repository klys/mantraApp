globalvar mkb_sett;

mkb_sett=ds_map_create();

        ds_map_add(mkb_sett,'open',0);        // keyboard is opened?
        ds_map_add(mkb_sett,'lang','QWERTY'); //default language: QWERTY or Русский
        ds_map_add(mkb_sett,'caps',0);        // caps is enable?
        ds_map_add(mkb_sett,'symb',0);        // symbol page is opened?

ds_map_add(mkb_sett,'swc',argument0);         //switching languages is possible?
ds_map_add(mkb_sett,'sug',argument1);         //suggestions activated?
ds_map_add(mkb_sett,'height',argument2);      //height of keyboard in %/100... eg. 0.35 or 0.46
ds_map_add(mkb_sett,'theme',argument3);       //'dark' or 'light'
ds_map_add(mkb_sett,'syscolour',argument4);   //The primary system color
ds_map_add(mkb_sett,'h',argument5);           //height of your GUI
ds_map_add(mkb_sett,'w',argument6);           //width of your GUI

switch (mkb_sett[? 'theme'])
{
    case 'dark':  ds_map_add(mkb_sett,'txtcolour',c_white); break;
    case 'light': ds_map_add(mkb_sett,'txtcolour',make_colour_rgb(55,71,79)); break;
}

ds_map_add(mkb_sett,'max',max(mkb_sett[? 'h'],mkb_sett[? 'w']))
ds_map_add(mkb_sett,'min',min(mkb_sett[? 'h'],mkb_sett[? 'w']))

ds_map_add(mkb_sett,'regu25',font_add('Roboto-Regular.ttf',mkb_sett[? 'max']*0.025,0,0,0,255));
ds_map_add(mkb_sett,'medi25',font_add('Roboto-Medium.ttf', mkb_sett[? 'max']*0.025,0,0,0,255));
ds_map_add(mkb_sett,'regu36',font_add('Roboto-Regular.ttf',mkb_sett[? 'max']*0.036,0,0,0,255)); 
ds_map_add(mkb_sett,'regu16',font_add('Roboto-Regular.ttf',mkb_sett[? 'max']*0.0155,0,0,0,255));
ds_map_add(mkb_sett,'medi21',font_add('Roboto-Medium.ttf', mkb_sett[? 'max']*0.021,0,0,0,255));

ds_map_add(mkb_sett,'ic_s2',mkb_sett[? 'max']*0.0375);      //real size of icons
ds_map_add(mkb_sett,'ic_s',ico_size(mkb_sett[? 'ic_s2']));  //the closest size
ds_map_add(mkb_sett,'orig',mkb_sett[? 'ic_s']/2);

ds_map_add(mkb_sett,'back', sprite_add('backspace\ic_backspace_white_' +string(mkb_sett[? 'ic_s'])+'.png',1,0,0,mkb_sett[? 'orig'],mkb_sett[? 'orig']));
ds_map_add(mkb_sett,'shift',sprite_add('shift\ic_keyboard_shift_white_'+string(mkb_sett[? 'ic_s'])+'.png',1,0,0,mkb_sett[? 'orig'],mkb_sett[? 'orig']));
ds_map_add(mkb_sett,'language',sprite_add('language\ic_language_white_'+string(mkb_sett[? 'ic_s'])+'.png',1,0,0,mkb_sett[? 'orig'],mkb_sett[? 'orig']));
ds_map_add(mkb_sett,'down',sprite_add('down\ic_keyboard_arrow_down_white_'+string(mkb_sett[? 'ic_s'])+'.png',1,0,0,mkb_sett[? 'orig'],mkb_sett[? 'orig']));
ds_map_add(mkb_sett,'enter',sprite_add('enter\ic_keyboard_enter_white_'+string(mkb_sett[? 'ic_s'])+'.png',1,0,0,0,0));


ds_map_add(mkb_sett,'repl',0); // timer hold key
