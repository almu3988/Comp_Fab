void setup() {
  size(900, 900);
  background(0);
  noLoop(); // Draw once
  noFill();
  stroke(255);
  
  int numRectangles = 80; // Number of rectangles to draw
  float maxWidth = 200;
  float maxHeight = 100;
  
  for (int i = 0; i < numRectangles; i++) {
    float rectWidth = random(20, maxWidth);
    float rectHeight = random(20, maxHeight);
    float x = random(rectWidth / 2, width - rectWidth / 2);
    float y = random(rectHeight / 2, height - rectHeight / 2);
    float angle = random(TWO_PI); // Random angle between 0 and 2*PI radians
    
    drawRotatedRectangle(x, y, rectWidth, rectHeight, angle);
  }
}

void drawRotatedRectangle(float x, float y, float w, float h, float angle) {
  pushMatrix();
  translate(x, y);
  rotate(angle);
  rectMode(CENTER);
  rect(0, 0, w, h);
  popMatrix();
}
