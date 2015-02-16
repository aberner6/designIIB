// Rectangle starts at location x
float x = 100;
float y = 100;

void setup() {
  size(500, 800);
}

void draw() {
  background(0);
  fill(255);
  
  // Display object
  rect(x, y, 250, 100);
  
  // Increment x
  y = y + 5;
  x = x + 5;
  
  if(x>width){
   x = 0; 
  }
  if(y>width){
   y = 0; 
  }
}

