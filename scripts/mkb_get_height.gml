if mkb_sett[? 'sug']
   then return mkb_sett[? 'h']-mkb_sett[? 'h']*(0.14+mkb_sett[? 'height'])
   else return mkb_sett[? 'h']-mkb_sett[? 'h']*(0.07+mkb_sett[? 'height']) 
