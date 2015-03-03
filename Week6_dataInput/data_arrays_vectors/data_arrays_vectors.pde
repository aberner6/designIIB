int[] numbers = { 
30,35,50,10,2,1,30,20,17,14,18,27,21,22,29,42,3,21,30,37,40,12,7
};  // Alternate syntax
int totalNums = 0;
Drop[] drops;
float min = 0;
float max = 0;
int topMargin = 20;

void setup() {
  size(400, 800);
  smooth();
  background(0);
  loadData();
}

void draw() {
  background(0);
  show();
  for (Drop d : drops) {
    d.update();
    d.render();
  }
}

void loadData() {
  drops = new Drop[numbers.length]; 
  for (int i = 0; i<numbers.length; i++) {
    drops[i] = new Drop();
  }
}

void show() {
  for (int i = 0; i<numbers.length; i++) {
    drops[i].tpos.x = width/2;
    min = min(numbers);
    max = max(numbers);
    int dataIs = numbers[i];
    drops[i].tpos.y = map (dataIs,min, max, topMargin, height-topMargin);
  }
}

