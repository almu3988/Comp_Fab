import Turtle.*;

Turtle t;

float r = 100;         // circle radius
int segments = 360;    // Number of segments used to approximate the circle, 360 deg
float circumference;
float stepLength;
float stepAngle;

void setup() {
  size(900, 900);
  background(0);
  stroke(255);
  strokeWeight(1);
  
  t = new Turtle(this);
  noLoop();

  circumference = TWO_PI * r;
  stepLength = circumference / segments;
  stepAngle = 360.0 / segments;
  
  t.penUp();
  t.forward(r);
  t.right(90);
  t.penDown();
}

void draw() {
  // Draw the circle by repeatedly moving forward a small segment and turning slightly.
  for (int i = 0; i < segments; i++) {
    t.forward(stepLength);
    t.right(stepAngle);
  }
}
