class Building {

  //this is instance variable that stores the paretheses argument in below constructor
  int xpos, ypos; 
  color buildingbodyColor = color(150, 120, 100);//light brown
  color buildingroofColor = color(40, 40, 40);//dark brown
  color groundColor = color(100, 70, 50);//medium brown

  //add chimney, windows and ground into building class, it will be more organized and less confusing for the setup() and draw() 
  Chimney c1, c2, c3, c4, c5, c6, c7;
  Window wd1, wd2, wd3, wd4, wd5, wd6;
  Ground gd;

  //constructor for class budiling, rewritten to incorporate these arguments 
  Building (int buildingPositionX, int buildingPositionY) {//temporary local variable
    xpos = buildingPositionX;
    ypos = buildingPositionY;

    //initialized the ground,  six windows and seven chimneies with arguments 
    gd = new Ground(0, 660); 
    wd1 = new Window(120, 480, 20, 25);
    wd2 = new Window(160, 480, 20, 25);
    wd3 = new Window(200, 480, 20, 25);
    wd4 = new Window(120, 520, 20, 25);
    wd5 = new Window(160, 520, 20, 25);
    wd6 = new Window(200, 520, 20, 25);
    c1 = new Chimney(610, 500, 10, 50);
    c2 = new Chimney(630, 500, 10, 50);
    c3 = new Chimney(690, 500, 10, 50);
    c4 = new Chimney(740, 500, 10, 50);
    c5 = new Chimney(760, 500, 10, 50);
    c6 = new Chimney(850, 500, 10, 50);
    c7 = new Chimney(910, 500, 10, 50);
  }

  void display() {

    noStroke();
    fill(buildingbodyColor);
    rectMode(CORNER);
    // draw left short building 
    rect(xpos, ypos, 180, 700);

    // draw left tall building
    rect(xpos+20, ypos-30, 140, 700);

    // draw the left bottom building
    rect(xpos-80, ypos+150, 1000, 700);

    // draw the right building
    rect(xpos+520, ypos+100, 1000, 700);



    fill(buildingroofColor);

    //draw the middle roof of the left building
    rect(xpos+20, ypos-50, 140, 20);

    // draw the left small roof of the left building
    rect(xpos, ypos-20, 20, 20);

    //draw the right roof of the left building
    rect(xpos+160, ypos-20, 20, 20);

    //draw the right building roof
    rect(xpos+520, ypos+70, 1000, 70);


    //run the window, chimney and ground object for loop in this order from top to bottom
    wd1.display();
    wd2.display();
    wd3.display();
    wd4.display();
    wd5.display();
    wd6.display();
    c1.display();
    c2.display();
    c3.display();
    c4.display();
    c5.display();
    c6.display();
    c7.display();
    gd.display();
  }
}