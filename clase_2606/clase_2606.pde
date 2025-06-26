int x = 0;
int y = 70;

float radio;

void setup() {
  size (500, 500);
  background(0);
  noStroke();
  frameRate(10);
}

void draw() {
  // representa ondas de sonido
  float  numAleatorio = random(0, 1);
  radio = (numAleatorio * width / 2);

  fill(map(x, 0, width, 100, 255), map(y, 0, height, 100, 255), random(100, 200), 150);
  //stroke(255); //(random(0,100), random(50,10), random(200,255));
  ellipse(x, y, radio, radio);
  x += 120;
  
  //Controlar el dibujo en vertical
  if (x > width) {
    x = 0;
    y = y + 70;
  }
  //Controlar el dibujo en eje horizontal
  if (y > height)  {
    y= 70;
  }
}
