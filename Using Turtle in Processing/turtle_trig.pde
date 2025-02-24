//Draw a triangle using turtle
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
  drawTrig(sideLength);
}

void drawTrig(float l){
  push();
  for(int i = 0; i < 3; i +=1){
    t.right(60);
    t.forward(l);
    t.right(60);
  }
  pop();
 
}
