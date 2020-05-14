/*
arg0=persents of height
arg1=height of screen
arg2=width of screen
*/

//close button
draw_set_colour(c_black)
draw_rectangle(0,round(mkb_sett[? 'h']-mkb_sett[? 'h']*0.07),round(mkb_sett[? 'w']),round(mkb_sett[? 'h']),0)
if draw_but(mkb_sett[? 'down'],mkb_sett[? 'w']*0.5,mkb_sett[? 'h']-mkb_sett[? 'h']*0.035,c_white,0.54,5) then {return true}

//keyboard
draw_set_colour(make_colour_rgb(236,239,240))
draw_rectangle(0,round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height'])),round(mkb_sett[? 'w']),round(mkb_sett[? 'h']-mkb_sett[? 'h']*0.07),0)
//draw_sprite_stretched(sprite1,-1,0,round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height'])),round(mkb_sett[? 'w']),round(mkb_sett[? 'h']*mkb_sett[? 'height']))

//stroke1
draw_rectangle_colour(0+1,round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height'])+2),round(mkb_sett[? 'w']-1),round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07)-1),make_colour_rgb(254,254,254),make_colour_rgb(254,254,254),make_colour_rgb(254,254,254),make_colour_rgb(254,254,254),1)

if !mkb_sett[? 'sug'] then exit;

//suggestions
draw_set_colour(make_colour_rgb(228,231,232))
draw_rectangle(0,round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']+0.07)),round(mkb_sett[? 'w']),round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height'])),0)

//dividers
draw_set_colour(c_black)
draw_set_alpha(0.12)
draw_line(round(mkb_sett[? 'w']*0.33),round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']+0.07)+12),round(mkb_sett[? 'w']*0.33),round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height'])-6))
draw_line(round(mkb_sett[? 'w']*0.67),round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']+0.07)+12),round(mkb_sett[? 'w']*0.67),round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height'])-6))
draw_set_alpha(1)

//stroke2
draw_rectangle_colour(0,round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']+0.07)+1),round(mkb_sett[? 'w']),round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07)),make_colour_rgb(246,246,246),make_colour_rgb(246,246,246),make_colour_rgb(241,241,241),make_colour_rgb(241,241,241),1);

//sug content
draw_set_colour(make_colour_rgb(55,71,79))
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(0.8)

yy=round(mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']+0.03))

draw_set_font(mkb_sett[? 'regu25'])
draw_text(mkb_sett[? 'w']*0.166,yy,'suggestion')
draw_text(mkb_sett[? 'w']-mkb_sett[? 'w']*0.166,yy,'suggestion')
draw_set_alpha(1)
draw_set_font(mkb_sett[? 'medi25'])
draw_text(mkb_sett[? 'w']*0.5,yy,'suggestion')
