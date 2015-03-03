// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-7: Drops one at a time

class Drop {

float x;
float tx;

float y;
float ty;

  float lerpVal = .01;
  
  void update(){
 x = lerp(x, tx, lerpVal); //magical lerping function - goes from the initial pos (0) to tpos
 y = lerp(y, ty, lerpVal); //magical lerping from 0 to target
}

void render() {
  pushMatrix();
  rect(x, y, 20, 20);
  popMatrix();
}

}
