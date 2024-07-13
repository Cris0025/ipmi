//tprec 3
//Cristian Julian Del Valle
//Comision 1
//https://www.youtube.com/watch?v=6uAx1T_6DBo


int centro = 5;
int columnas = 20;
int filas = 20;
float inicioX = 400; 
float inicioY = 0;
float anchoCuadricula = 400; 
float altoCuadricula = 400; 
float anchoCelda, altoCelda;
boolean Mouse;
PImage imagen; 
color[][] coloresActuales;

void setup() {
  size(800, 400);
  anchoCelda = anchoCuadricula / columnas - 2; 
  altoCelda = altoCuadricula / filas - 2; 
  imagen = loadImage("cuadrados.jpg"); 
  coloresActuales = new color[columnas][filas];
  Cuadricula(columnas, filas, 2);
} 

      void draw() {
      background(0);
      image(imagen, 0, 0, 400, 400); 
      translate(inicioX, inicioY); 
      for (int i = 0; i < columnas; i++) { 
      for (int j = 0; j < filas; j++) { 
      float x = i * (anchoCelda + 2); 
      float y = j * (altoCelda + 2);
      fill(coloresActuales[i][j]); 
      stroke(204, 153, 102); 
      strokeWeight(2); 
      rect(x, y, anchoCelda, altoCelda); 
    }
  }
}

      void Cuadricula(int columnas, int filas, int tamañoCentro) {
      for (int i = 0; i < columnas; i++) { 
      for (int j = 0; j < filas; j++) { 
      coloresActuales[i][j] = ColorCuadricula(i, j, columnas, filas, tamañoCentro); 
    }
  }
}

      color ColorCuadricula(int i, int j, int columnas, int filas, int tamañoCentro) {
      if (i == 0 || i == columnas - 1 || j == 0 || j == filas - 1) {     
      return color(0);
  }
      if (i == 1 || i == columnas - 2 || j == 1 || j == filas - 2) {     
      return color(50); 
  }
      float distanciaAlCentro = max(abs(i - columnas / 2), abs(j - filas / 2));
      float distanciaMaxima = max(columnas, filas) / 2 - tamañoCentro;
      if (distanciaAlCentro <= tamañoCentro) {
      return color(0); 
  }   else {
      float valorGris = map(distanciaAlCentro, 0, distanciaMaxima, 255, 100);
      return color(valorGris);
  }
}

      void mouseMoved() {
      for (int i = 0; i < columnas; i++) { 
      for (int j = 0; j < filas; j++) { 
      float x = inicioX + i * (anchoCelda + 2); 
      float y = inicioY + j * (altoCelda + 2);
      Mouse = mouseceldas(x, y, anchoCelda, altoCelda);
      if (Mouse) { 
      coloresActuales[i][j] = color(random(255), random(255), random(255));
      }
    }
  }
}

      boolean mouseceldas(float x, float y, float anchoCelda, float altoCelda) {
      return mouseX > x && mouseX < x + anchoCelda && mouseY > y && mouseY < y + altoCelda;
}

      void keyPressed() {
      if (key == 'h' || key == 'H') {
      Cuadricula(columnas, filas, 2); 
      redraw(); 
  }
}
