// get actual step
var stepToChange = view_xview[0] / 320;
show_debug_message("oldStep: "+string(stepToChange))
// change actual step to DONE
with(objStepPiece) {
    if (step == stepToChange) and (image_index == 1) {
        image_index = 2;
    }
}

// change next step to EDITING
var nextStep = stepToChange+1;

show_debug_message("ongoingStep: "+string(nextStep))

if (nextStep <= 5) {
    with(objStepPiece) {
        if (step == nextStep) and (image_index == 0) {
            image_index = 1;            
        } 
    }
   // move to next step
    slider_right(320) 
}
