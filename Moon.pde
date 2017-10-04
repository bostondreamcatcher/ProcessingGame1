class Moon {

  void display() {

    // color the background to match
    background(60, 35, 10);


    /*Making a sun when the mouse move to the right half the canvas, dark background color
     (night) becomes light blue background color(day time)*/
     
    int red, green, blue;
    red = int(mouseX/1000.0*24);
    green = int(mouseX/1000.0*211);
    blue = int(mouseX/1000.0*245);
    //println(mouseX,mouseX/1700.0);

    if (mouseX>600) { 
      //background(24, 211, 245);//light blue background means day time
      fill(237, 22, 22);//red color sun
      stroke(color(237, 89, 14));//with orange edge
      ellipse(mouseX, mouseY, 100, 100); //Making the sun
      println("True");
    } else if (mouseY<700) {//Making the moon, stay original picture
      fill(209, 222, 47);
      strokeWeight(0);
      ellipse(mouseX, mouseY, 100, 100); 
      println("false");
    }

    //if mouseY less the 600 pixels vertical, background color change to orange like sunset

    //if (mouseY>600) {  
      //background(255, 100, 0);//Sunset orange color
    //}
    
    
    background(red, green, blue);
    
  }
}