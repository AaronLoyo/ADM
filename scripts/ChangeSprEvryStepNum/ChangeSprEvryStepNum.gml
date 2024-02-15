function ChangeSprEvryStepNum(stepsToChange, currentStepsPassed) {
if (currentStepsPassed < stepsToChange) {
    currentStepsPassed += 1;
} else {
    currentStepsPassed = 0;
    
    var totalImages = sprite_get_number(sprite_index);
    
    if (image_index < totalImages - 1) {
        image_index += 1;
    } else {
        image_index = 0;
    }
}

}