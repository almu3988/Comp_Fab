//Draw capitilized letter T using turtle
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
  //t.right(30);
  
  t.penUp();
  t.penDown();
  
}

void draw(){
  float l = 40;
  float w = 50;
  drawT(l, w);
}

void drawT(float l, float w){
  push();
   //t.forward(int(l));
   //drawing the bottom horizontal line
   t.penUp();
   t.right(90);
   t.back(w / 2);
   t.penDown();
   t.forward(w);
   
   //middle veritcal line
   t.penUp();
   t.back(w / 2);
   t.right(90);
   t.penDown();
   t.forward(l);
   
   //
   t.penUp();
   t.back(w / 2);
   t.penDown();

   t.forward(w);
   
   t.penUp();
   t.back(w / 2);
   t.left(90);
   pop();
 
}
