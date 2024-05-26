//tp2
//Cristian Julian Del Valle
//Comision 1
PImage imagen1, imagen2, imagen3;
int pantalla, tiempo, suma, diametro, py;
boolean ultimaPantalla;
color colorDelBoton;
PFont fuente;

void setup() {
  size(640, 480);
  py = height;
  fuente = loadFont("arial.vlw");
  textFont(fuente, 30);
  imagen1 = loadImage ("imagen1.png");
  imagen2 = loadImage ("imagen2.png");
  imagen3 = loadImage ("imagen3.png");
  textSize(40);
  tiempo = frameCount/2;
  pantalla = 0;
  suma = 1;
  diametro = 50;
  ultimaPantalla = false;
  colorDelBoton = color(15 , 240 , 56);  
}

void draw() {
    if (pantalla == 0) {
    image (imagen1, 0, 0, width, height); 
    push();
    textSize ( 30 );
    textAlign(CENTER);
    text("American Horror Story es una serie de terror del año 2011 escrita y dirigida por Ryan Murphy", 100, py, 440, 300);
    pop();    
    if (py>-5);
  {
    py --;
  }
 
  } else if (pantalla == 1) {
    image ( imagen2, 0, 0, width, height);  //imagen 2
    textSize(30);
    textAlign(CENTER);
    text("Tiene una gran variedad de casos  \n  en sus temporadas, en su mayoria son casos reales de hechos o personas \n que existieron verdaderamente", 100, py, 440, 300);
    if (py>-5);
  {
    py --;
  }
  
  } else if (pantalla == 2) {
   image(imagen3, 0, 0, width, height);
   textSize(30);
   textAlign(CENTER); //centrar texto
   fill(255);
    text("Entre todas ellas, Mourder House es mi favorita \n  en ella se nos cuenta la historia del anticristo y \n se enlaza con otras temporadas ", 100, py, 440, 300); 
     if (py>-5);
  {
    py ++;
  }
     //BOTON
     fill(colorDelBoton);
      circle(583, 162, diametro);
      textSize(10);
      fill(255);
      text("Reiniciar", 583, 162);    
    if (pantalla == 3) {
    image(imagen3, 0, 0, width, height); 
     if (py>-5);
    }
  } 

  if (ultimaPantalla == false) {
    frameCount /= suma;
  if (frameCount >= 250&& pantalla != 3) {
    frameCount = 0;
    if (pantalla != 2) {
      pantalla++;
    } else if (pantalla == 2) {
      ultimaPantalla = true;
    } 
   }
  }
}
  
void mouseClicked() {
  push ();
  pantalla++;
  if (ultimaPantalla == true) {
    if (dist( 583 , 162 , mouseX, mouseY) < diametro/2) {
      pantalla = 0;
      py = height;
      frameCount = 0;
      suma = 1;
      ultimaPantalla = false;
      pop ();
    }
  }
}

void mouseMoved() {
  if (ultimaPantalla == true) {
    if (dist(583 , 162 , mouseX, mouseY) < diametro/2) {
     
      colorDelBoton = color(225, 25, 19);
    }   else {
       push ();  
      colorDelBoton = color(25, 25, 19);
        textSize ( 10);
        fill ( 225 , 0 ,0 );
         text("Reiniciar", 583, 162); 
         pop ();
         
    }   
  }
}
