Table myTable;

int totalNums = 0;
Drop[] drops;

int topMargin = 50;

int lengthOfData = 4984;
int[] wordCount;

int maxWordsIndex=-1;
int maxWords=0;
int minWords=100000000;

boolean l,h = false;
String[] sectionOrder = {
  "Business Day", "Sports", "U.S.", "World", "Technology", "N.Y. / Region", "Opinion", "Arts", "Fashion & Style", "Health", "Science", "Travel", "Home & Garden", "Books", "Movies", "Theater", "Real Estate", "Automobiles", "Education", "Magazine", "Dining & Wine"
};
void setup() {
  size(400, 400);
  smooth();
  background(0);

  myTable = loadTable("articles_view_edited.csv");
  lengthOfData = myTable.getRowCount();

  drops = new Drop[4984];
  wordCount = new int[4984];

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

  for (int i = 0; i < myTable.getRowCount(); i++) {
    TableRow r = myTable.getRow(i);
    drops[i] = new Drop();    
    
    drops[i].section = r.getString(2);
    
    int n = r.getInt(1);
    wordCount[i] = n;

    if (n > maxWords) {
      maxWords = n;
      maxWordsIndex=i;
    }
    if (n < minWords) {
      minWords = n;
    }
  }
  println(minWords+"min");
  println(wordCount.length+"length");
}
void show() {
  for (int i = 0; i<wordCount.length; i++) {
    int wordCountIs = wordCount[i];
    drops[i].ty = map (wordCountIs, minWords, maxWords, topMargin, height-topMargin);
    if (l) {
      drops[i].ty = height/2;
      drops[i].tx = map (wordCountIs, minWords, maxWords, 200, 220);
    }
    else {
      drops[i].tx = width/2;
      drops[i].ty = map (wordCountIs, minWords, maxWords, topMargin, height-topMargin);
    }
  }
}

void keyPressed() {
  if (key=='l') {
    l=true;
  }
  if (key=='h') {
    l=false;
  }
}

