// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-7: Drops one at a time

class Drop {
  PVector pos = new PVector(); //the famous PVector
  PVector tpos = new PVector(); //the amazingness of PVectors: we can define a target
  float lerpVal = .01;
  
  void update(){
  pos.x = lerp(pos.x, tpos.x, lerpVal); //magical lerping function - goes from the initial pos (0) to tpos
  pos.y = lerp(pos.y, tpos.y, lerpVal); //magical lerping from 0 to target
}

void render() {
  pushMatrix();
  //    rotate(hourly);
  rect(pos.x, pos.y, 20, 20);
  popMatrix();
}

}
