//Draw a Pentagon using turtle
import Turtle.*;

int size = 0;
int maxSize = 500;

Turtle t;

void setup(){
  size(900, 900);
  background(0);
  stroke(255);
  strokeWeight(1);
  t = new Turtle(this);
  noLoop();
  t.right(90);
  
  t.penUp();
  t.penDown();
  
}

void draw(){
  float sideLength = 60;
  drawPent(sideLength);
}

void drawPent(float l){
  push();
  for(int i = 0; i < 5; i +=1){ //number of sides is 5
    t.right(36); //36 is the number of degrees 180 / 5 = 36
    t.forward(l); // pushes it 
    t.right(36); //second right swings it around again
  }
  pop();
 
}
