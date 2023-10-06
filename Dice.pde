Die one;
int total=0;

void setup(){
  size(400, 400);
  noLoop();
}

void draw() {
  background(255);
  for (int y=0; y<350; y+=50) {
    for (int x=-50; x<400; x+=50) {
      Die one= new Die(x, y);
      one.roll();
      one.show();
    }
  }
  textSize(20);
  fill(0);
  textAlign(CENTER);
  text("Sum: "+total,200,390);
}



void mousePressed() {
  total=0;
  redraw();
}

class Die {//models one single dice cube

  int myX, myY,sum, dots;

  Die(int x, int y) { //constructor
    myX=x;
    myY=y;
    sum=0;
  }

  void roll() {
    dots=(int)((Math.random()*6)+1);
    total=total+dots;
    sum=dots*sum;
    
  }

  void show() {
    rect(myX, myY, 50,50);
    if (dots==1) {
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
    } else if (dots==2) {
      fill(0);
      ellipse(myX+40, myY+25, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
    } else if (dots==3) {
      fill(0);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
    } else if (dots==4) {
      fill(0);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if (dots==5) {
      fill(0);
      ellipse(myX+25, myY+25, 10, 10);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } else if (dots==6) {
      fill(0);
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
    }
    noFill();
  }
}
