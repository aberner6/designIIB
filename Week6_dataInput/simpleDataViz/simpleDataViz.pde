
int[] arrayOfInts = {
  22, 35, 48, 59, 14, 5
};
int r = 10;
int lMargin = 50;

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

