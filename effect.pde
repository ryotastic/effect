 String file = "460-494.csv";
Table table;
int index;
int beat;

circle[] arcircle1;


void setup() {
  frameRate(20);
  fullScreen();
  //size(800, 600);
  smooth();
  //frameRate(fr);
  
  table = loadTable(file,"header");
  
  arcircle1 = new circle[table.getRowCount()];
  
  index = 0;
  beat = 0;
}

void draw() {
  background(0);

  if(index>=arcircle1.length){
     index=0;
     }
  
  
  
  
  
  
  
  for (int x=200; x <= width-200; x +=15){
      noStroke();
      strokeWeight(10);
      stroke(255,85,0,random(150,200));
    
      float h = table.getRow(index).getFloat("excitement");
      line(x, random(100,150)-0.5*h, x, random(100,150)+0.5*h);
    }
    
    
    
    for (int x=200; x <= width-200; x +=15){
      noStroke();
      strokeWeight(10);
      stroke(191,8,186,random(150,200));
    
      float h = table.getRow(index).getFloat("frustration");
      line(x, random(250,300)-0.5*h, x, random(250,300)+0.5*h);
    }
    
    for (int x=200; x <= width-200; x +=15){
      noStroke();
      strokeWeight(10);
      stroke(91,154,0,random(150,200));
    
      float h = table.getRow(index).getFloat("valence");
      line(x, random(450,500)-0.5*h, x, random(450,500)+0.5*h);
    }
    
    for (int x=200; x <= width-200; x +=15){
      noStroke();
      strokeWeight(10);
      stroke(0,137,235,random(150,200));
    
      float h = table.getRow(index).getFloat("focus");
      line(x, random(650,700)-0.5*h, x, random(650,700)+0.5*h);
    }
    
    
    
    
    index = index +1;
    beat ++;
  if ( beat == 24*15 ){
    exit();
  }
  saveFrame("data/screen/####.jpg");
  }