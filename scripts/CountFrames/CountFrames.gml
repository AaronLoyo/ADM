function CountFrames(currentFrame, framesToDo){
    currentFrame += 1;
    if (currentFrame > framesToDo) {
        currentFrame = 0;
        return true;
    }
    
    return currentFrame;
}
