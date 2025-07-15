Table table;
int nSamples;

float[] appUsagetime;
float[] screenOntime;

void setup() {
  size(500, 500);

  table = loadTable("user_behavior.csv", "header");
  nSamples = table.getRowCount();

  appUsagetime = new float[nSamples];
  screenOntime = new float[nSamples];

  for (int i = 0; i < nSamples; i++) {
    appUsagetime[i] = table.getFloat(i, "App Usage Time (min/day)");
    screenOntime[i] = table.getFloat(i,"Screen On Time (hours/day)");
  }
}

void draw(){
  background(0);
  
  for (int i = 0; i < nSamples; i = i +1 ) {
  float x = map(appUsagetime[i], 0 , max(appUsagetime), 0 , width);
  float y = map(screenOntime[i], 0 , max(appUsagetime), height, 0);
  
  fill(random(100,255),random(0, 100), random(50,80));
  noStroke();
  ellipse(x,y,10,10);
  
  }
}

   
