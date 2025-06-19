int incrementos = 50;
void setup() {
  size(500,500);
  background(255);
}
void draw() {
  for(int x = 0 ; x <= width; x+= incrementos) {
    for(int y=0 ; y<= height; y+= incrementos) {
      noStroke();
      fill(random(200,95), random(120,255), random(10,50));
      rect(x, y , incrementos,incrementos);  }
  }
}
