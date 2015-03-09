
int leftMargin = 40;

int topMargin = 50;

int[] arrayOfInts = {
  6, 5, 7, 6, 7, 6, 4, 3, 4, 6
};

void setup() {
  size(500, 200);
  background(0);
  drawData();
}

void drawData() {
  for (int i = 0; i<arrayOfInts.length; i++) {
//    println(arrayOfInts.length+" length!");
//    println(i+" index value!");
//    println(arrayOfInts[i]+" data value!");
    
    float y = map(i, 0, arrayOfInts.length, topMargin, height-topMargin); 
    
    int min = min(arrayOfInts);
    int max = max(arrayOfInts);
    
    float wide = map(arrayOfInts[i], min, max, leftMargin, width-leftMargin*2);
    println(arrayOfInts[i]+" this is actual data" + wide+"  mapped to special WIDE");
    
    rect(leftMargin, y, wide, 8);
    
  }
}

  //for(int i=0; i<arrayOfInts.length; i++){
  ////find max
  ////find min
  //
  //println(max);
  //println(min);
  //float y = map(arrayOfInts[i], min, max, topMargin, height-topMargin);
  //
  //ellipse (70*i,70,10,10);
  //
  //}

