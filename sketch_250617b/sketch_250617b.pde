//inicio de variable para la posicion x o y 
int posX;
int posY;
int speedX = 10;
int speedY = 10;
void setup() {
  size(500,500);  
}

void draw() {
  background(255);
  
  //declaramos el valor de variables
  posX = posX + speedX;
  posY = posY + speedY;
  
  if(posX >= width || posX <= 0) {
    speedX = speedX * -1;
  }  
  if(posY >= width || posY <= 0) {
    speedY = speedY * -1;
  }
  
// dibujar el ellipse
  fill(20,150,200);
  noStroke();
  ellipse(posX,250,50,50);
  
  fill(20,150,200);
  noStroke();
  ellipse(250,posY,50,50);
}
