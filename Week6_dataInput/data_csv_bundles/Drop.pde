// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-7: Drops one at a time

class Drop {
  PVector pos = new PVector(); //the famous PVector
  PVector tpos = new PVector(); //the amazingness of PVectors: we can define a target
  float lerpVal = .1;
  String section;
  void update() {
    pos.x = lerp(pos.x, tpos.x, lerpVal); //magical lerping function - goes from the initial pos (0) to tpos
    pos.y = lerp(pos.y, tpos.y, lerpVal); //magical lerping from 0 to target
  }

  void render() {
    pushMatrix();
    //    rotate(hourly);
    for (int i=0; i<sectionOrder.length; i++) {
      if (section.equals(sectionOrder[i])) {
        translate(10+10*i,0);
        println("yes");
      }
    }
    fill(0, 255, 255, 100);
    rect(0, pos.y, 10, 10);
//    rect(pos.x, pos.y, 10, 10);
    popMatrix();
  }
}

