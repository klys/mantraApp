/// slider_right(pos to add)
var newpos = view_xview[0] + argument0;

if (instance_exists(objHorizontalSlider_Right)) exit; 

with(instance_create(0,0,objHorizontalSlider_Right)) posToGo = newpos;
