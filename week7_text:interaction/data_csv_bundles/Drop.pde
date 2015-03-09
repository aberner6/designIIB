// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-7: Drops one at a time

class Drop {
  float tx;
  float ty;
  float x;
  float y;
  float lerpVal = .1;
  String section;
  
  void update() {
    x = lerp(x, tx, lerpVal); //magical lerping function - goes from the initial pos (0) to tpos
    y = lerp(y, ty, lerpVal); //magical lerping from 0 to target
  }

  void render() {
    pushMatrix();
    //    rotate(hourly);
    for (int i=0; i<sectionOrder.length; i++) {
      if (section.equals(sectionOrder[i])) {
        float xTrans = map(i, 0, sectionOrder.length, topMargin, width-topMargin);
        translate(xTrans,0); //10+10*i
      }
    }
    fill(0, 255, 255, 100);
    rect(0, y, 10, 10);
//    rect(pos.x, pos.y, 10, 10);
    popMatrix();
  }
}

