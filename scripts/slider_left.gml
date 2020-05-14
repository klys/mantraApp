/// slider_left(pos to substract)
var newpos = view_xview[0] - argument0;

if (instance_exists(objHorizontalSlider_Left)) exit;

with(instance_create(0,0,objHorizontalSlider_Left)) posToGo = newpos;
