draw_set_colour(mkb_sett[? 'txtcolour'])
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

// ROW 1
yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.88)) 
draw_set_font(mkb_sett[? 'regu36'])
draw_set_alpha(1)
draw_letter(mkb_sett[? 'w']*0.05,yy,'1',1)
draw_letter(mkb_sett[? 'w']*0.15,yy,'2',1)
draw_letter(mkb_sett[? 'w']*0.25,yy,'3',1)
draw_letter(mkb_sett[? 'w']*0.35,yy,'4',1)
draw_letter(mkb_sett[? 'w']*0.45,yy,'5',1)
draw_letter(mkb_sett[? 'w']*0.55,yy,'6',1)
draw_letter(mkb_sett[? 'w']*0.65,yy,'7',1)
draw_letter(mkb_sett[? 'w']*0.75,yy,'8',1)
draw_letter(mkb_sett[? 'w']*0.85,yy,'9',1)
draw_letter(mkb_sett[? 'w']*0.95,yy,'0',1)


// ROW 2
yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.64))
draw_letter(mkb_sett[? 'w']*0.1,yy,'@',2)
draw_letter(mkb_sett[? 'w']*0.2,yy,'\#',2)
draw_letter(mkb_sett[? 'w']*0.3,yy,'$',2)
draw_letter(mkb_sett[? 'w']*0.4,yy,'%',2)
draw_letter(mkb_sett[? 'w']*0.5,yy,'&',2)
draw_letter(mkb_sett[? 'w']*0.6,yy,'-',2)
draw_letter(mkb_sett[? 'w']*0.7,yy,'+',2)
draw_letter(mkb_sett[? 'w']*0.8,yy,'(',2)
draw_letter(mkb_sett[? 'w']*0.9,yy,')',2)

//ROW 3
yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.39)) 
draw_letter(mkb_sett[? 'w']*0.2,yy,'*',3)
draw_letter(mkb_sett[? 'w']*0.3,yy,'"',3)
draw_letter(mkb_sett[? 'w']*0.4,yy,"'",3)
draw_letter(mkb_sett[? 'w']*0.5,yy,':',3)
draw_letter(mkb_sett[? 'w']*0.6,yy,';',3)
draw_letter(mkb_sett[? 'w']*0.7,yy,'!',3)
draw_letter(mkb_sett[? 'w']*0.8,yy,'?',3)

draw_set_font(mkb_sett[? 'medi21'])
if draw_letter(mkb_sett[? 'w']*0.068,yy,'=\<',3) then {mkb_sett[? 'symb']=2}

if draw_but(mkb_sett[? 'back'],mkb_sett[? 'w']*0.931,yy,mkb_sett[? 'txtcolour'],0.54,3) 
   then {
         if string_copy(keyboard_string,string_length(keyboard_string),1)='#'
            then keyboard_string=string_copy(keyboard_string,1,string_length(keyboard_string)-2)
            else keyboard_string=string_copy(keyboard_string,1,string_length(keyboard_string)-1)
       }
       
//ROW 4
yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.141)) 
// ABC
draw_set_font(mkb_sett[? 'medi21'])
if draw_letter(mkb_sett[? 'w']*0.073,round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.15)) ,'ABC',4)  then {mkb_sett[? 'symb']=0}
// , and _
draw_set_font(mkb_sett[? 'regu36'])
draw_letter(mkb_sett[? 'w']*0.2,yy,',',4)
draw_letter(mkb_sett[? 'w']*0.3,yy,'_',4)
// SPACE
draw_set_alpha(0.12)
draw_roundrect_ext(mkb_sett[? 'w']*0.356,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.2),mkb_sett[? 'w']*0.64,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.09),4.5,4.5,0)
draw_set_alpha(0.3)
draw_set_font(mkb_sett[? 'medi21'])
//debug
//draw_rectangle(mkb_sett[? 'w']*0.356,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.25),mkb_sett[? 'w']*0.64,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07),1)
draw_text(mkb_sett[? 'w']*0.498,round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.15)),mkb_sett[? 'lang'])
   if point_in_rectangle(mouse_x,mouse_y,mkb_sett[? 'w']*0.356,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.25),mkb_sett[? 'w']*0.64,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07)) and mouse_check_button_pressed(mb_left)
      then  audio_play_sound(KeypressSpacebar,1,0)
   if point_in_rectangle(mouse_x,mouse_y,mkb_sett[? 'w']*0.356,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.25),mkb_sett[? 'w']*0.64,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07)) and mouse_check_button_released(mb_left)
      then keyboard_string+=' '      

draw_set_alpha(1)
// / and .
draw_set_font(mkb_sett[? 'regu36'])
draw_letter(mkb_sett[? 'w']*0.7,yy,'/',4)
draw_letter(mkb_sett[? 'w']*0.8,yy,'.',4)
// ENTER
yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*(0.26))) 
draw_set_alpha(1)
draw_ellipse_colour(mkb_sett[? 'w']*(0.865+0.007),yy*(1.007),mkb_sett[? 'w']*(0.865+0.002)+sprite_get_width(mkb_sett[? 'enter'])*0.85,yy+sprite_get_width(mkb_sett[? 'enter'])*0.87,c_white,c_white,0)
if draw_but2(mkb_sett[? 'enter'],mkb_sett[? 'w']*0.865,yy,mkb_sett[? 'syscolour'],1) then {return true;}
