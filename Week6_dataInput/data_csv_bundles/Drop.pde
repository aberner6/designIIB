// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-7: Drops one at a time

class Drop {
  PVector pos = new PVector(); //the famous PVector
  PVector tpos = new PVector(); //the amazingness of PVectors: we can define a target

  float size1 = 0;
  float size2;
  
  float lerpVal = .1;
  String section;
  void update() {
    pos.x = lerp(pos.x, tpos.x, lerpVal); //magical lerping function - goes from the initial pos (0) to tpos
    pos.y = lerp(pos.y, tpos.y, lerpVal); //magical lerping from 0 to target
    size1 = lerp(size1, size2, lerpVal); //magical lerping from 0 to target
  }

  void render() {
    pushMatrix();
    //    rotate(hourly);
    for (int i=0; i<sectionOrder.length; i++) {
      float x = map(i, 0, sectionOrder.length, topMargin, width-topMargin);
      if (section.equals(sectionOrder[i])) {
        translate(x,0);
      }
    }
    fill(0, 255, 255, 10);
    rect(0, pos.y, size1, size1);
//    rect(pos.x, pos.y, 10, 10);
    popMatrix();
  }
}

