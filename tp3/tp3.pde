// tp3
// Cristian Julian Del Valle
// Comision 1
// https://www.youtube.com/watch?v=tFHgPumXYog

int columnas = 20;
int filas = 20;
float inicioX = 400; // La mitad de la pantalla hacia la derecha
float inicioY = 0;   // Inicio de la cuadrícula en la parte superior
float anchoCuadricula = 400; 
float altoCuadricula = 400; 
float anchoCelda, altoCelda;
PImage imagen; // 
color[][] coloresActuales;

void setup() {
  size(800, 400);
  anchoCelda = anchoCuadricula / columnas - 2; 
  altoCelda = altoCuadricula / filas - 2; //Reducir la altura de las celdas para dejar espacio
  imagen = loadImage("cuadrados.jpg"); 
  if (imagen == null) {
  }
  coloresActuales = new color[columnas][filas];
  cargarColores(); 
}
void draw() {
  background(0);
  image(imagen, 0, 0, 400, 400); 
  dibujarCuadricula();   
}
  void cargarColores() {
  int tamañoCentro = 6;             //Define el tamaño del area central de color negro
  for (int i = 0; i < columnas; i++) {         //Recorre todas las columnas
  for (int j = 0; j < filas; j++) {            
  if (abs(i - columnas / 2) < tamañoCentro / 2 && abs(j - filas / 2) < tamañoCentro / 2) {    //Verifica si la celda está dentro del cuadrado negro central
        coloresActuales[i][j] = color(0); // 
      } else {
        float distanciaAlCentro = max(abs(i - columnas / 2), abs(j - filas / 2));   //Calcula la distancia de la celda actual al centro de la cuadrícula
        float maxDistancia = max(columnas / 2, filas / 2);        //Calcula la distancia máxima posible desde el centro hasta cualquier borde de la cuadrícula
        float valorGris = map(distanciaAlCentro, 0, maxDistancia, 255, 30);     //calcula la distancia a un valor gris, donde las celdas mas cercanas al centro seran mas claras
        coloresActuales[i][j] = color(valorGris);
      }
    }
  }
}

      void dibujarCuadricula() {
      for (int i = 0; i < columnas; i++) {    // Recorre todas las columnas de la cuadrícula
      for (int j = 0; j < filas; j++) {      //Recorre todas las filas de la cuadrícula
      float x = inicioX + i * (anchoCelda + 2);  //Calcula la posición de la esquina superior izquierda del cuadrado en la posición (i, j)
      float y = inicioY + j * (altoCelda + 2);
      fill(coloresActuales[i][j]);       //Color de la celda
      stroke(204, 153, 102);       
      strokeWeight(2);     
      rect(x, y, anchoCelda, altoCelda); //Dibuja la celda
    }
  }
}

void mouseMoved() {
  for (int i = 0; i < columnas; i++) { // Recorre todas las columnas de la cuadrícula
    for (int j = 0; j < filas; j++) {  //   // Recorre todas las filas de la cuadrícula
      float x = inicioX + i * (anchoCelda + 2); /// Calcula la posición de la esquina superior izquierda del cuadrado en la posición (i, j)
      float y = inicioY + j * (altoCelda + 2);
      if (mouseX > x && mouseX < x + anchoCelda && mouseY > y && mouseY < y + altoCelda) { //// Verifica si el ratón está dentro de los límites del cuadrado en la posición (i, j)
        coloresActuales[i][j] = color(random(255), random(255), random(255));
        redraw(); 
      }
    }
  }
}

void keyPressed() {
  if (key == 'h' || key == 'H') {
    resetearColores(); 
    redraw(); 
  }
}

void resetearColores() {
  cargarColores(); 
}
