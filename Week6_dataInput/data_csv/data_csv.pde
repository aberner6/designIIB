Table myTable;

int totalNums = 0;
Drop[] drops;

int topMargin = 20;

int lengthOfData = 4984;
int[] wordCount;

int maxWordsIndex=-1;
int maxWords=0;
int minWords=100000000;

boolean l,h = false;

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
    int n = r.getInt(1);

    wordCount[i] = n;

    if (n > maxWords) {
      maxWords = n;
      maxWordsIndex=i;
    }
    if (n < minWords) {
      minWords = n;
    }
    drops[i] = new Drop();
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
      drops[i].tpos.x = map (wordCountIs, minWords, maxWords, topMargin, width-topMargin);
    }
    else {
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

