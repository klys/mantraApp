draw_set_colour(mkb_sett[? 'txtcolour'])
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

// ROW 1
yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.95)) 
draw_set_font(mkb_sett[? 'regu16'])
draw_set_alpha(0.3)
draw_text(mkb_sett[? 'w']*0.07 ,yy,'1')
draw_text(mkb_sett[? 'w']*0.16 ,yy,'2')
draw_text(mkb_sett[? 'w']*0.255,yy,'3')
draw_text(mkb_sett[? 'w']*0.342,yy,'4')
draw_text(mkb_sett[? 'w']*0.435,yy,'5')
draw_text(mkb_sett[? 'w']*0.526,yy,'6')
draw_text(mkb_sett[? 'w']*0.615,yy,'7')
draw_text(mkb_sett[? 'w']*0.71 ,yy,'8')
draw_text(mkb_sett[? 'w']*0.80 ,yy,'9')
draw_text(mkb_sett[? 'w']*0.89 ,yy,'0')

yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.88)) 
draw_set_font(mkb_sett[? 'regu36'])
draw_set_alpha(1)
draw_letter(mkb_sett[? 'w']*0.045,yy,'Й',1)
draw_letter(mkb_sett[? 'w']*0.137,yy,'Ц',1)
draw_letter(mkb_sett[? 'w']*0.225,yy,'У',1)
draw_letter(mkb_sett[? 'w']*0.32 ,yy,'К',1)
draw_letter(mkb_sett[? 'w']*0.41 ,yy,'Е',1)
draw_letter(mkb_sett[? 'w']*0.5  ,yy,'Н',1)
draw_letter(mkb_sett[? 'w']*0.591,yy,'Г',1)
draw_letter(mkb_sett[? 'w']*0.683,yy,'Ш',1)
draw_letter(mkb_sett[? 'w']*0.771,yy,'Щ',1)
draw_letter(mkb_sett[? 'w']*0.863,yy,'З',1)
draw_letter(mkb_sett[? 'w']*0.953,yy,'Х',1)


// ROW 2
yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.64))
draw_letter(mkb_sett[? 'w']*0.045,yy,'Ф',2)
draw_letter(mkb_sett[? 'w']*0.134,yy,'Ы',2)
draw_letter(mkb_sett[? 'w']*0.225,yy,'В',2)
draw_letter(mkb_sett[? 'w']*0.32 ,yy,'А',2)
draw_letter(mkb_sett[? 'w']*0.408,yy,'П',2)
draw_letter(mkb_sett[? 'w']*0.5  ,yy,'Р',2)
draw_letter(mkb_sett[? 'w']*0.59 ,yy,'О',2)
draw_letter(mkb_sett[? 'w']*0.68 ,yy,'Л',2)
draw_letter(mkb_sett[? 'w']*0.772,yy,'Д',2)
draw_letter(mkb_sett[? 'w']*0.864,yy,'Ж',2)
draw_letter(mkb_sett[? 'w']*0.955,yy,'Э',2)

//ROW 3
yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.39)) 
draw_letter(mkb_sett[? 'w']*0.154,yy,'Я',3)
draw_letter(mkb_sett[? 'w']*0.24 ,yy,'Ч',3)
draw_letter(mkb_sett[? 'w']*0.327,yy,'С',3)
draw_letter(mkb_sett[? 'w']*0.411,yy,'М',3)
draw_letter(mkb_sett[? 'w']*0.5  ,yy,'И',3)
draw_letter(mkb_sett[? 'w']*0.59 ,yy,'Т',3)
draw_letter(mkb_sett[? 'w']*0.675,yy,'Ь',3)
draw_letter(mkb_sett[? 'w']*0.762,yy,'Б',3)
draw_letter(mkb_sett[? 'w']*0.85 ,yy,'Ю',3)

if draw_but(mkb_sett[? 'back'],mkb_sett[? 'w']*0.946,yy,mkb_sett[? 'txtcolour'],0.54,3) 
   then {
         if string_copy(keyboard_string,string_length(keyboard_string),1)='#'
            then keyboard_string=string_copy(keyboard_string,1,string_length(keyboard_string)-2)
            else keyboard_string=string_copy(keyboard_string,1,string_length(keyboard_string)-1)
       }
if draw_but(mkb_sett[? 'shift'],mkb_sett[? 'w']*0.055,round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.37)),mkb_sett[? 'syscolour'],1,3) then {mkb_sett[? 'caps']=0}

//ROW 4
yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.141)) 
// ?123
draw_set_font(mkb_sett[? 'medi21'])
if draw_letter(mkb_sett[? 'w']*0.073,round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.15)) ,'?123',4) then {mkb_sett[? 'symb']=1}
// , 
draw_set_alpha(0.54)
draw_set_font(mkb_sett[? 'regu36'])
draw_letter(mkb_sett[? 'w']*0.2,yy,',',4)
// language
if mkb_sett[? 'swc']
then {if draw_but(mkb_sett[? 'language'],mkb_sett[? 'w']*0.3,yy,mkb_sett[? 'txtcolour'],0.54,4) then {mkb_sett[? 'lang']="QWERTY"}}
else {draw_letter(mkb_sett[? 'w']*0.3 ,yy,'Ё',4)}
// SPACE
draw_set_alpha(0.12)
draw_roundrect_ext(mkb_sett[? 'w']*0.356,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.2),mkb_sett[? 'w']*0.74,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.09),4.5,4.5,0)
draw_set_alpha(0.3)
draw_set_font(mkb_sett[? 'medi21'])
//debug
//draw_rectangle(mkb_sett[? 'w']*0.356,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.25),mkb_sett[? 'w']*0.74,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07),1)
draw_text(mkb_sett[? 'w']*0.55,round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.15)),mkb_sett[? 'lang'])
   if point_in_rectangle(mouse_x,mouse_y,mkb_sett[? 'w']*0.356,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.25),mkb_sett[? 'w']*0.74,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07)) and mouse_check_button_pressed(mb_left)
      then  audio_play_sound(KeypressSpacebar,1,0)
   if point_in_rectangle(mouse_x,mouse_y,mkb_sett[? 'w']*0.356,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*0.25),mkb_sett[? 'w']*0.74,mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07)) and mouse_check_button_released(mb_left)
      then keyboard_string+=' '
// .
draw_set_alpha(0.54)
draw_set_font(mkb_sett[? 'regu36'])
draw_letter(mkb_sett[? 'w']*0.8,yy,'.',4)
// ENTER
yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']*(0.26))) 
draw_set_alpha(1)
draw_ellipse_colour(mkb_sett[? 'w']*(0.865+0.007),yy*(1.007),mkb_sett[? 'w']*(0.865+0.002)+sprite_get_width(mkb_sett[? 'enter'])*0.85,yy+sprite_get_width(mkb_sett[? 'enter'])*0.87,c_white,c_white,0)
if draw_but2(mkb_sett[? 'enter'],mkb_sett[? 'w']*0.865,yy,mkb_sett[? 'syscolour'],1) then {return true;}
