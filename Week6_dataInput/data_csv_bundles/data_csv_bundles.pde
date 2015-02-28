Table myTable;

int totalNums = 0;
Drop[] drops;

int topMargin = 30;

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
  size(1200, 400);
  smooth();
  stroke(255);
  background(105);

  myTable = loadTable("articles_view_edited.csv");
  lengthOfData = myTable.getRowCount();

  drops = new Drop[4984];
  wordCount = new int[4984];

  loadData();
}

void draw() {
  background(105);
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
  println(maxWords+"max");
  println(wordCount.length+"length");
}
void show() {
  for (int i = 0; i<wordCount.length; i++) {
    int wordCountIs = wordCount[i];
    drops[i].tpos.y = map (wordCountIs, minWords, maxWords, topMargin, height-topMargin);
    if (l) {
      drops[i].tpos.y = height/2;
      drops[i].size2 = map (wordCountIs, minWords, maxWords, 10, topMargin*2);
    }
    else {
      drops[i].size2 = 10;
      drops[i].tpos.x = width/2;
      drops[i].tpos.y = map (wordCountIs, minWords, maxWords, topMargin, height-topMargin);
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

