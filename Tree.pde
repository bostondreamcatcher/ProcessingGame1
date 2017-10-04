class Tree {
  
   //this is instance variable that stores the paretheses argument in below constructor
  int x, y, w, h;
  color treeColorGrey = color(125);//grey
  color treeColorGreen = color(0, 255, 0);//green
  boolean click = false;


  //constructor of tree, rewritten to incorporate these arguments 
  Tree(int treeX, int treeY, int treeW, int treeH) {//temporary local variable
    x = treeX;
    y = treeY;
    w = treeW;
    h = treeH;
  }
  
 
  
//draw the trees
  void display() {
    
    //boolean condition, the tree switch on and off by mouse press
    if (mousePressed) {
      click = !click;
    }

    if (click) {
      fill(treeColorGrey);
    } else {
      fill(treeColorGreen);
    }
    
    //draw  the tree
    noStroke();   
    ellipse(x, y+40, w, h);
    rect(x-5, y+55, w-20, h-8);
 
  }
}