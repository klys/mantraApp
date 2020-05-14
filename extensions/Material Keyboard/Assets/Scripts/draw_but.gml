#define draw_but
if mkb_sett[? 'lang']='QWERTY' or mkb_sett[? 'symb']>0
   then mkb_x=mkb_sett[? 'w']/(10*2)
   else mkb_x=mkb_sett[? 'w']/(11*2)

switch (argument5)
{
    case 3: {mkb_y1=0.5  mkb_y2=0.25}; break;
    case 4: {mkb_y1=0.25 mkb_y2=0   }; break;
    case 5: {mkb_y1=0    mkb_y2=-0.25}; break;
}

//debug:
//draw_rectangle(argument1-mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y1),argument1+mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y2),1) 

// Used for backspace, language and caps buttons

draw_sprite_ext(argument0,-1,argument1,argument2,mkb_sett[? 'ic_s2']/mkb_sett[? 'ic_s'],mkb_sett[? 'ic_s2']/mkb_sett[? 'ic_s'],0,argument3,argument4)

if point_in_rectangle(mouse_x,mouse_y,argument1-mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y1),argument1+mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y2)) and mouse_check_button_pressed(mb_left) 
   then audio_play_sound(KeypressDelete,1,0)

if point_in_rectangle(mouse_x,mouse_y,argument1-mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y1),argument1+mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y2)) and mouse_check_button(mb_left) 
   then
   {
   draw_sprite_ext(argument0,-1,argument1,argument2,mkb_sett[? 'ic_s2']/mkb_sett[? 'ic_s'],mkb_sett[? 'ic_s2']/mkb_sett[? 'ic_s'],0,mkb_sett[? 'syscolour'],0.5)
   }

if point_in_rectangle(mouse_x,mouse_y,argument1-mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y1),argument1+mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y2)) and mouse_check_button_released(mb_left)
   then {
   mouse_clear(mb_left)
   return true;
   }


#define draw_but2
//debug:
//draw_rectangle(argument1,argument2,mkb_sett[? 'w'],mkb_sett[? 'h']-mkb_sett[? 'h']*0.07,1)

// Used for ENTER button

draw_sprite_ext(argument0,-1,argument1,argument2,1,1,0,argument3,argument4)

if point_in_rectangle(mouse_x,mouse_y,argument1,argument2,mkb_sett[? 'w'],mkb_sett[? 'h']-mkb_sett[? 'h']*0.07) and mouse_check_button_pressed(mb_left) 
   then audio_play_sound(KeypressReturn,1,0)

if point_in_rectangle(mouse_x,mouse_y,argument1,argument2,mkb_sett[? 'w'],mkb_sett[? 'h']-mkb_sett[? 'h']*0.07) and mouse_check_button(mb_left) 
   then
   {
   draw_sprite_ext(argument0,-1,argument1,argument2,1,1,0,mkb_sett[? 'syscolour'],0.5)
   }

if point_in_rectangle(mouse_x,mouse_y,argument1,argument2,mkb_sett[? 'w'],mkb_sett[? 'h']-mkb_sett[? 'h']*0.07) and mouse_check_button_released(mb_left)
   then {
   mouse_clear(mb_left)
   return true;
   }
