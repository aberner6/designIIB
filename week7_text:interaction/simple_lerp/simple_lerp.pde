int x = 50;
int y = 25;

float lerpVal = .01;

float g; //grow

void setup() {
   size(300, 400);
   background(255);
   smooth();
}
 
void draw() {
  background(255);
  textp();
  grow();
}
  
void textp() {
    noStroke();
    fill(85, 85, 85, 255);
    rect(x, y , 200, g);
}

void grow() {
  int targetG = 152;
//has to grow from g to a target g
  g = lerp(g, targetG, lerpVal);
}
