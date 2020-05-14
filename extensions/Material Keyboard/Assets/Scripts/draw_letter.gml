if mkb_sett[? 'lang']='QWERTY' or mkb_sett[? 'symb']>0
   then mkb_x=mkb_sett[? 'w']/(10*2)
   else mkb_x=mkb_sett[? 'w']/(11*2)

switch (argument3)
{
    case 1: {mkb_y1=1    mkb_y2=0.75}; break;
    case 2: {mkb_y1=0.75 mkb_y2=0.5 }; break;
    case 3: {mkb_y1=0.5  mkb_y2=0.25}; break;
    case 4: {mkb_y1=0.25 mkb_y2=0   }; break;
}

//debug:
//draw_rectangle(argument0-mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y1),argument0+mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y2),1) 


draw_set_colour(mkb_sett[? 'txtcolour'])
draw_text(argument0,argument1,argument2)

if point_in_rectangle(mouse_x,mouse_y,argument0-mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y1),argument0+mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y2)) and mouse_check_button_pressed(mb_left)
   then audio_play_sound(KeypressStandard,1,0);

if point_in_rectangle(mouse_x,mouse_y,argument0-mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y1),argument0+mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y2)) and mouse_check_button(mb_left)
   then {
   if string_length(argument2)<3
      then 
      {
      razmer1=mkb_sett[? 'min']*0.133/2
       
      draw_set_alpha(0.05)
      draw_set_colour(c_black)
      for (i=1; i<round(mkb_sett[? 'max']*0.012); i+=1)
      {
      draw_roundrect(round(argument0-razmer1-i/3),
                     round(argument1+razmer1-mkb_sett[? 'max']*0.179+i),
                     round(argument0+razmer1+i/3),
                     round(argument1+razmer1+i),
                     0)
      };
     
      draw_set_alpha(0.15)
      draw_roundrect(round(argument0-razmer1-1),
                     round(argument1+razmer1-mkb_sett[? 'max']*0.179+3),
                     round(argument0+razmer1+1),
                     round(argument1+razmer1+3),
                     0)
      
      draw_set_alpha(1)
      
      switch (mkb_sett[? 'theme'])
{
    case 'dark':  {draw_set_colour(make_colour_rgb(61,72,76))}; break;
    case 'light': {draw_set_colour(make_colour_rgb(214,219,220))}; break;
}

      draw_roundrect(round(argument0-razmer1),
                     round(argument1+razmer1-mkb_sett[? 'max']*0.179),
                     round(argument0+razmer1),
                     round(argument1+razmer1),
                     0)
      draw_set_colour(mkb_sett[? 'txtcolour'])
      
if mkb_sett[? 'repl']<8
   then {draw_text_transformed(round(argument0),round(argument1-mkb_sett[? 'max']*0.179+mkb_sett[? 'min']*0.133),argument2,1.5,1.5,0)}
   else {draw_text_transformed(round(argument0),round(argument1-mkb_sett[? 'max']*0.179+mkb_sett[? 'min']*0.133),mkb_replacement(argument2),1.5,1.5,0)}
 mkb_sett[? 'repl']+=1
      }
   }
   
   
if point_in_rectangle(mouse_x,mouse_y,argument0-mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y1),argument0+mkb_x,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*mkb_y2)) and mouse_check_button_released(mb_left)
   then {
   if string_length(argument2)<3
      then {
      if mkb_sett[? 'repl']<8 
         then keyboard_string+=argument2;      
         else keyboard_string+=mkb_replacement(argument2);
         mkb_sett[? 'repl']=0}
      else return true;
   }
