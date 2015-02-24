int x = 0;

// Example 7-1: Defining a function
void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  background(255);
  fill(200, 100, 0, 100);
  noStroke();
  ellipse(10, 10, 100, 100); 
  drawBlackCircle();
  moveBlackCircle();
}

void drawBlackCircle() {
  println("this is my function");
  fill(0);
  ellipse(50+x, 50, 20, 20);
}

void moveBlackCircle(){
 x += 5;   
}

