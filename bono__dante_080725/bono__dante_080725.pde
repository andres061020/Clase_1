PImage img;
int index = 0;


void setup() {
  size(500, 500);
}

void draw (){
  loadImageEvent(index);
}


void mousePressed() {
  index++;
  loadImageEvent(index);
  println (index);
}


void loadImageEvent ( int i) {
  switch (i) {
  case 0:
    println("evento o");
    img = loadImage("entrada al infierno.jpg");
    break;
  case 1:
    println("evento 1");
    img = loadImage("entrada al cielo.jpg");
    break;
   case 2:
    println("evento 2");
    img = loadImage("entrada al purgatorio.jpg");
    break;
   case 3:
    println("evento 3");
    index= 0;
    break;
  }
  image (img, 0, 0, width , height);
}
