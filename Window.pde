class Window {
  
  //this is instance variable that stores the paretheses argument in below constructor
  int wdX, wdY, wdW, wdH;
  color windowColor = color(240, 245, 109);
  color windowDayColor = color(0,0,0);
  
  //constructor for windows, rewritten to incorporate these arguments 
    Window (int windowX, int windowY, int windowW, int windowH) {//temporary local variable
    wdX = windowX;
    wdY = windowY;
    wdW = windowW;
    wdH = windowH;
}

void display (){
  if (mouseX>600) { 
     println("DAY");
     fill(windowDayColor);
  } else {
      fill(windowColor);
  }
    // draw the windows
     rect(wdX, wdY, wdW, wdH);
 }
}