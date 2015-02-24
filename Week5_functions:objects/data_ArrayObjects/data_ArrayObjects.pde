/**
 * Array Objects. 
 * 
 * Demonstrates the syntax for creating an array of custom objects. 
 */

int unit = 40;
int count;
Module[] mods;
int[] info; 

void setup() {
  size(640, 360);
  noStroke();
//  int wideCount = width / unit;
//  int highCount = height / unit;
//  count = 100;

info = {1,2,3,4,5};
  mods = new Module[info.length];

  int index = 0;
//  for (int y = 0; y < highCount; y++) {
//    for (int x = 0; x < wideCount; x++) {
  for (int i=0; i<info.length; i++){
      mods[i++] = new Module(i*unit, unit, unit/2, unit/2, random(0.05, 0.8), unit);
  }
//    }
//  }
}

void draw() {
  background(0);
  for (int i = 0; i < count; i++) {
    mods[i].update();
    mods[i].draw();
  }
}

