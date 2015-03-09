// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-7: Drops one at a time

class Drop {
  float lerpVal = .1;
  
  float tx;
  float ty;
  float x;
  float y;
  
  void update(){
  x = lerp(x, tx, lerpVal); //magical lerping function - goes from the initial pos (0) to tpos
  y = lerp(y, ty, lerpVal); //magical lerping from 0 to target
}

void render() {
  pushMatrix();
  //    rotate(hourly);
  fill(0,255,255,100);
  rect(x, y, 10, 10);
  popMatrix();
}

}
