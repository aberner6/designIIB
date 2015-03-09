int[] numbers = { 
  90, 300, 30, 1, 90, 300, 30, 1, 90, 300, 30, 1
};  // an array of data

int totalNums = 0;
//declaring our object "Drop" which will contain an array also
Drop[] drops;

//declaring our min and max - this will be filled in later
float min;
float max;

//margin for spacing out the visualization
int topMargin = 20;

void setup() {
  size(400, 400);
  smooth();
  //let's load the data into our visual
  loadData();
  show();
  background(0);
  //we can render the drops in the setup beause there is no motion 
  //it occurs once and no more
  for (Drop d : drops) { //for all the drops
    d.render(); //call the function render
  }
}

void draw() {
}

void loadData() {
  //declare as many drops as we have numbers in our array 
  drops = new Drop[numbers.length]; 

  //make a new drop for each number
  for (int i = 0; i<numbers.length; i++) {
    int num = numbers[i];
    drops[i] = new Drop();
  }
}
void show() {
  //let's go inside of our numbers array
  for (int i = 0; i<numbers.length; i++) {
    
    //for every drop, send x and y position
    drops[i].x = width/2;
    drops[i].y = height/2;

    //send rotation information to drop objects
    float turnBy = map (i, 0, numbers.length, 0, TWO_PI)-HALF_PI;
    drops[i].rotation = turnBy;

    //set line length mapped from min to max to min to max ideal line length
    min = min(numbers);
    max = max(numbers);
    int dataIs = numbers[i];
    //map our data values, which go from min to max (as determined above)
    //to a new scale: 10 to 100
    //so the smallest data value (min) will be 10
    //the biggest data value (max) will be 100
    //everything else falls appropriately in between
    drops[i].leng = map (dataIs, min, max, 10, 100);
  }
}

