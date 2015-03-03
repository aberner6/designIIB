int[] numbers = { 
  90, 300, 30, 1
};  // Alternate syntax
int totalNums = 0;
Drop[] drops;
float min = 0;
float max = 0;
int topMargin = 20;

void setup() {
  size(400, 400);
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
    int num = numbers[i];
    drops[i] = new Drop();
  }
}
void show() {
  for (int i = 0; i<numbers.length; i++) {
    drops[i].tx = width/2;
    min = min(numbers);
    max = max(numbers);
    int dataIs = numbers[i];
    drops[i].ty = map (dataIs,min, max, topMargin, height-topMargin);
  }
}

