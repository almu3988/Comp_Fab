int borderStroke = 5;

void setup() {
  size(900, 900);
  background(255);
  noLoop();
  
  noFill();
  stroke(0);
  
  float initialWidth = width * 0.8;
  float initialHeight = height * 0.1;
  float x = (width - initialWidth) / 2;
  float y = height * 0.9 - initialHeight;
  float scaleFactor = 0.85;
  float minHeight = 5;
  float gap = 10;
  
  int twoBS = borderStroke*2;
  rect(borderStroke, borderStroke, width-twoBS, height-twoBS);

  while (initialHeight >= minHeight) {
    rect(x, y, initialWidth, initialHeight);
    
    initialWidth *= scaleFactor;
    initialHeight *= scaleFactor;
    x += (initialWidth * (1 - scaleFactor)) / 2;
    y -= initialHeight + gap;
  }
}


// Handles key press events
void keyPressed() { 
  // press 's' to save a svg of your drawing
  if (key == 's') {
    // Make file name with the currrent date/time
    String folder = "output";
    String fileName = "drawing-" + ".pdf";
    beginRecord(PDF, folder + "/" + fileName);
    setup();
    draw();
    endRecord();
    println("Saved to file: " + fileName);
  }
}
