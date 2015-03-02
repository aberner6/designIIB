
int[] arrayOfInts = {
  22, 35, 48, 59, 14, 5
};
int r = 10;
int lMargin = 50;
// A boolean to track whether we are recording are not
boolean recording = false;

void setup() {
  size(500, 500);
  smooth();
  background(255);
  strokeWeight(10);
}

void draw() {
  for (int i=0; i<arrayOfInts.length; i++) {
    float xPos = map(i, 0, arrayOfInts.length-1, lMargin, width-lMargin);
    line(xPos, height/2, xPos, height/2-arrayOfInts[i]);
  }
}


void keyPressed() {
  // If we press r, start or stop recording!
  if (key == 'r' || key == 'R') {
    recording = !recording;
  }
  // If we are recording call saveFrame!
  // The number signs (#) indicate to Processing to 
  // number the files automatically
  if (recording) {
    saveFrame("output/frames####.png");
  }
}
