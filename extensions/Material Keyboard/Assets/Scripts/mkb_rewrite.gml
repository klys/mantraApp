/*
argument0= switching languages   1-enable 0-disable
argument1= suggestions       1-enable 0-disable
argument2= height of keyboard in %/100... eg. 0.35
argument3= theme 'dark' or 'light'
argument4= material base colour

argument5= height of GUI (screen)
argument6= width of GUI
*/
font_delete(mkb_sett[? 'regu25']);
font_delete(mkb_sett[? 'medi25']);
font_delete(mkb_sett[? 'regu36']); 
font_delete(mkb_sett[? 'regu16']);
font_delete(mkb_sett[? 'medi21']);

sprite_delete(mkb_sett[? 'back']);
sprite_delete(mkb_sett[? 'shift']);
sprite_delete(mkb_sett[? 'language']);
sprite_delete(mkb_sett[? 'down']);
sprite_delete(mkb_sett[? 'enter']);


ds_map_replace(mkb_sett,'swc',argument0);
ds_map_replace(mkb_sett,'sug',argument1);
ds_map_replace(mkb_sett,'height',argument2);
ds_map_replace(mkb_sett,'theme',argument3);
ds_map_replace(mkb_sett,'syscolour',argument4);
ds_map_replace(mkb_sett,'h',argument5);
ds_map_replace(mkb_sett,'w',argument6);
ds_map_replace(mkb_sett,'max',max(mkb_sett[? 'h'],mkb_sett[? 'w']))
ds_map_replace(mkb_sett,'min',min(mkb_sett[? 'h'],mkb_sett[? 'w']))

ds_map_replace(mkb_sett,'regu25',font_add('Roboto-Regular.ttf',mkb_sett[? 'max']*0.025,0,0,0,255));
ds_map_replace(mkb_sett,'medi25',font_add('Roboto-Medium.ttf', mkb_sett[? 'max']*0.025,0,0,0,255));
ds_map_replace(mkb_sett,'regu36',font_add('Roboto-Regular.ttf',mkb_sett[? 'max']*0.036,0,0,0,255)); 
ds_map_replace(mkb_sett,'regu16',font_add('Roboto-Regular.ttf',mkb_sett[? 'max']*0.0155,0,0,0,255));
ds_map_replace(mkb_sett,'medi21',font_add('Roboto-Medium.ttf', mkb_sett[? 'max']*0.021,0,0,0,255));

ds_map_replace(mkb_sett,'ic_s2',mkb_sett[? 'max']*0.0375);      //real size of icons
ds_map_replace(mkb_sett,'ic_s',ico_size(mkb_sett[? 'ic_s2']));  //the closest size in library
ds_map_replace(mkb_sett,'orig',mkb_sett[? 'ic_s']/2);

ds_map_replace(mkb_sett,'back', sprite_add('backspace\ic_backspace_white_' +string(mkb_sett[? 'ic_s'])+'.png',1,0,0,mkb_sett[? 'orig'],mkb_sett[? 'orig']));
ds_map_replace(mkb_sett,'shift',sprite_add('shift\ic_keyboard_shift_white_'+string(mkb_sett[? 'ic_s'])+'.png',1,0,0,mkb_sett[? 'orig'],mkb_sett[? 'orig']));
ds_map_replace(mkb_sett,'language',sprite_add('language\ic_language_white_'+string(mkb_sett[? 'ic_s'])+'.png',1,0,0,mkb_sett[? 'orig'],mkb_sett[? 'orig']));
ds_map_replace(mkb_sett,'down',sprite_add('down\ic_keyboard_arrow_down_white_'+string(mkb_sett[? 'ic_s'])+'.png',1,0,0,mkb_sett[? 'orig'],mkb_sett[? 'orig']));
ds_map_replace(mkb_sett,'enter',sprite_add('enter\ic_keyboard_enter_white_'+string(mkb_sett[? 'ic_s'])+'.png',1,0,0,0,0));

switch (mkb_sett[? 'theme'])
{
    case 'dark':  ds_map_replace(mkb_sett,'txtcolour',c_white); break;
    case 'light': ds_map_replace(mkb_sett,'txtcolour',make_colour_rgb(55,71,79)); break;
}
