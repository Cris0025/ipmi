PImage gatito;
void setup() {
  size (800, 400);
  gatito = loadImage("gatito.png");
}
void draw () {
  println("X");
  println(mouseX);
  println("Y");
  println(mouseY);
  background (155, 144, 126);
  image(gatito, 0, 0, 400, 400);
  fill(0,0,0);
  rect(400,150,150,100);//television
  fill(205,147,78);
  rect(400,250,130,90);//mueble
  fill(151, 136, 122); // COLOR CABEZA
  ellipse(580, 154, 160, 150); // CABEZA
  fill(232, 201, 167); //COLOR OREJAS
  triangle(512, 117, 512, 21, 551, 83);
  fill(109, 105, 98);
  ellipse(545, 142, 40, 25);
  ellipse(610, 142, 40, 25);
  fill(232, 201, 167);
  triangle(610, 87, 637, 25, 647, 120);
  triangle(562, 169, 576, 143, 589, 169);
  fill(0);
  ellipse(541, 138, 10, 17);
  ellipse(610, 138, 10, 17);
  fill(151, 136, 122);
  ellipse(577, 400, 250, 399);
  fill(178, 198, 205);
  rect(400, 317, 800, 350);
  fill(218, 205, 192);
  ellipse(527, 300, 50, 40);
  ellipse(625, 300, 50, 40);
  line(556, 181, 470, 160);
  line(556, 181, 470, 170);
  line(556, 181, 470, 150);
  line(556, 181, 470, 140);
  line(610, 185, 680, 150);
  line(610, 185, 680, 160);
  line(610, 185, 680, 170);
  line(610, 185, 680, 180);
  line(556, 191, 576, 173);
  line(576, 172, 598, 190);
  fill(0);
  line(514, 315, 518, 296);
  line(536, 317, 535, 296);
  line(612, 316, 619, 294);
  line(637, 315, 635, 296);
  fill(229, 58, 206);
  triangle(525, 193, 637, 209, 530, 210);
  ellipse(635, 211, 20, 20);
  
}
