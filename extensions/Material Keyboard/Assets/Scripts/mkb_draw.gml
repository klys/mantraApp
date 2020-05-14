switch (mkb_sett[? 'theme'])
{
    case 'dark':  {if mkb_back_dark()  then {mkb_sett[? 'open']=0}}; break;
    case 'light': {if mkb_back_light() then {mkb_sett[? 'open']=0}}; break;
}
if mkb_sett[? 'symb']=0
   then { 
       if  mkb_sett[? 'caps'] and mkb_sett[? 'lang']="QWERTY"  then {if mkb_eng_big() then return true;}
       if !mkb_sett[? 'caps'] and mkb_sett[? 'lang']="QWERTY"  then {if mkb_eng_small() then return true;}
       if  mkb_sett[? 'caps'] and mkb_sett[? 'lang']="Русский" then {if mkb_rus_big() then return true;}
       if !mkb_sett[? 'caps'] and mkb_sett[? 'lang']="Русский" then {if mkb_rus_small() then return true;}
        }
   else if mkb_sett[? 'symb']=1
           then {if mkb_sym_1() then return true;}
           else if mkb_sett[? 'symb']=2
                   then {if mkb_sym_2() then return true;}

