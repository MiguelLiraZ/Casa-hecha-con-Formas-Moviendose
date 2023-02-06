PImage img;

float x = 0;
float speed = 1;

void setup(){
size(700,400);
img = loadImage("Fondo.jpg"); //Declaramos Fondo
}

void draw(){
 image(img,0,0); //Colocamos Fondo
   move();
  display();
}

void move() {
  x = x + speed;
  if (x > width) {
    x = 0;
  }
}


void display() {
fill(#AD7711); //Cabaña
rect(x,200,100,100);
rect(x+100,200,100,100);


fill(#D31702); //Techo
triangle(x,200,x+50,125,x+100,200);
quad(x+47,125,x+150,125,x+200,200,x+97,200);


fill(#D2E1F2); //Ventana
rect(x+130,215,25,25);
fill(#000000);//Barras de la Ventana
rect(x+140,215,4,25);
rect(x+130,225,25,4);


fill(#F7F711);//Puerta
rect(x+20,219,32,75);
fill(#3BBCFF);
circle(x+45,247,6);


fill(#39B42A); //Montaña
circle(x+110,450,400);

}
