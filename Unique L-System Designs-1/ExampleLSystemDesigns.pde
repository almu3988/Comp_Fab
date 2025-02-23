// ExampleLSystemDesigns - contains helper methods to create and 
// initialize an LSystem
// to set up parameters and init the LSystem (from the main file)

import java.util.HashMap;

// [TODO]: create your own L-System initialization methods
// and use/test in the setup() method of L1LSystemAssignment file. 
// See example for Square Lsystem below.

// Square Lsystem initialization 
// This method returns an Lsystem object that uses
// The rules and axioms for a square based system
LSystem initSquare() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 0.3;  //affects the scale of the drawing 
  
  // The intial axiom / input string
  String axiom = "FX";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  //X+YF+
  rules.put('X', "X+YF+YF+F+");
  //
  rules.put('Y', "-FX-Y-FY+X");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}

LSystem initMirrorDragonCurve() {
  // initialize turtle variables
  float moveDist = 10;
  float rotateAngle = 90;
  float scaleFactor = 0.3;  //affects the scale of the drawing 
  
  // The intial axiom / input string
  String axiom = "FX";
  
  // Create any production rules
  HashMap<Character, String> rules = new HashMap<>();
  //X+YF+
  rules.put('X', "X+YF+YF+F-");
  //
  rules.put('Y', "-FX-Y-FY+X+");
    
  // Create and return the Lsystem
  return new LSystem(axiom, rules, moveDist, rotateAngle, scaleFactor);
}
