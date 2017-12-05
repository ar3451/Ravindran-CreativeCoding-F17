Asteroid a;

int rocketX = 230;

Timer timer;

PImage rocket;
PImage astronaut;
PImage asteroid1, asteroid2, asteroid3, asteroid4, asteroid5, asteroid6, asteroid7;
PImage title;

PGraphics test;

int walkerY, pWalkerY;
int speed = 5;

int astroX = (width/2)-10;
int astroY = pWalkerY-10;

int asteroid1X = 550;
int asteroid2X = 550;
int asteroid3X = 550;
int asteroid4X = 550;
int asteroid5X = 550;
int asteroid6X = 550;
int asteroid7X = 550;
float asteroid1Y = random(50,450);
float asteroid2Y = random(100,400);
float asteroid3Y = random(150,350);
float asteroid4Y = random(150,350);
float asteroid5Y = random(50,450);
float asteroid6Y = random(400,450);
float asteroid7Y = random(50);

import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioPlayer lose;
AudioPlayer smack;

import gifAnimation.*;

Gif myAnimation;

int stage;

void setup() {
  stage = 1;
  size(500, 500);
  title = loadImage("Title.png");
  myAnimation  = new Gif(this, "Lose.gif");
  minim = new Minim(this);
  player = minim.loadFile("SpaceBreathing.mp3");
  lose = minim.loadFile("ShootingStars.mp3");
  smack = minim.loadFile("smack.mp3");
  //player.loop();
  println (millis());
  timer = new Timer();
  timer.start();
  rocket = loadImage("Rocket.png");
  astronaut = loadImage("astronaut.png");
  asteroid1 = loadImage("asteroid.png");
  asteroid2 = loadImage("asteroid.png");
  asteroid3 = loadImage("asteroid.png");
  asteroid4 = loadImage("asteroid.png");
  asteroid5 = loadImage("asteroid.png");
  asteroid6 = loadImage("asteroid.png");
  asteroid7 = loadImage("asteroid.png");
  test = createGraphics(width, height);
  test.beginDraw();
  test.stroke(153);
  test.strokeWeight(3);
  test.endDraw();
  walkerY = height/2;
  
  a = new Asteroid();
}

void draw() {
  if (stage ==1){
    image(title, -100, 0);
    image(astronaut,300,150);
    astronaut.resize(200,0);
    player.loop();
    if (keyPressed == true){
      stage = 2;
  }
  }
  if (stage == 2){
  starryNight();
  moveWalker();
  drawAstronaut();
  moveCanvas();
  //a.spawn();
  image(rocket, rocketX, (height/2)-5);
  rocket.resize(20,0);
  image(rocket, rocketX, (height/2)-5);
  rocketX -= 1;
  time();
  
  asteroidSpawn();
  asteroid1Movement();
  asteroid2Movement();
  asteroid3Movement();
  asteroid4Movement();
  asteroid5Movement();
  asteroid6Movement();
  //movingRocket();
  //a.moveAsteroids();
  
  collision();
  }
}

void moveWalker() {
  pWalkerY = walkerY;
  if (keyPressed) {
    if (keyCode == UP && walkerY>speed) walkerY-=speed;
    else if (keyCode == DOWN && walkerY<test.height-speed) walkerY+=speed; 
  }
}

void drawAstronaut() {
  test.beginDraw();
  test.line(width/2, walkerY, width/2, pWalkerY);
  test.endDraw();
  image(astronaut, (width/2)-10, pWalkerY-10);
  astronaut.resize(20,0);
  image(test, 0, 0);
  noStroke();
  fill(255, 0, 0);
  //ellipse(width/2, walkerY, 10, 10);
}

void moveCanvas() {
  test.loadPixels();
  for (int y=0; y<test.height; y++) {
    for (int x=0; x<test.width-1; x++) {
      int index = x + y * test.width;
      test.pixels[index] = test.pixels[index+1];
    }
  }
  test.updatePixels();
}

// https://processing.org/examples/star.html
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  fill(255,255,102);
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

void starryNight(){
  
  background(0);
  //star 1
  pushMatrix();
  translate(width*0.1, height*0.2);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 2
  pushMatrix();
  translate(width*0.1, height*0.4);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 3
  pushMatrix();
  translate(width*0.1, height*0.6);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 4
  pushMatrix();
  translate(width*0.1, height*0.8);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 5
  pushMatrix();
  translate(width*0.3, height*0.1);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 6
  pushMatrix();
  translate(width*0.3, height*0.3);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  
   //star 7
  pushMatrix();
  translate(width*0.3, height*0.7);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 8
  pushMatrix();
  translate(width*0.3, height*0.9);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  
  //star 9
  pushMatrix();
  translate(width*0.5, height*0.2);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  /*
  //star 10
  pushMatrix();
  translate(width*0.5, height*0.4);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 11
  pushMatrix();
  translate(width*0.5, height*0.6);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  */
  //star 13
  pushMatrix();
  translate(width*0.5, height*0.8);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 14
  pushMatrix();
  translate(width*0.7, height*0.1);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 15
  pushMatrix();
  translate(width*0.7, height*0.3);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 16
  pushMatrix();
  translate(width*0.7, height*0.7);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 17
  pushMatrix();
  translate(width*0.7, height*0.9);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 18
  pushMatrix();
  translate(width*0.9, height*0.2);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 18
  pushMatrix();
  translate(width*0.9, height*0.4);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 18
  pushMatrix();
  translate(width*0.9, height*0.6);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
  
  //star 18
  pushMatrix();
  translate(width*0.9, height*0.8);
  rotate(frameCount / -50.0);
  star(0, 0,5,2.5, 5); 
  popMatrix();
}

void asteroidSpawn(){
  image(asteroid1, asteroid1X, asteroid1Y);
  asteroid1.resize(50,0);
  
  image(asteroid2, asteroid2X, asteroid2Y);
  asteroid2.resize(70,0);
  
  image(asteroid3, asteroid3X, asteroid3Y);
  asteroid3.resize(90,0);
  
  image(asteroid4, asteroid4X, asteroid4Y);
  asteroid4.resize(60,0);
  
  image(asteroid5, asteroid5X, asteroid5Y);
  asteroid5.resize(80,0);
  
  image(asteroid6, asteroid6X, asteroid6Y);
  asteroid6.resize(100,0);
  
  image(asteroid7, asteroid7X, asteroid7Y);
  asteroid6.resize(100,0);
}

void asteroid1Movement(){
  if (asteroid1X != -25){
    asteroid1X -= 5;
  }
  else{
    asteroid1X = 550;
    asteroid1Y = random(50,450);
  }
}

void asteroid2Movement(){
  if (asteroid2X != -35){
    asteroid2X -= 4;
  }
  else{
    asteroid2X = 550;
    asteroid2Y = random(100,400);
  }
}

void asteroid3Movement(){
  if (asteroid3X != -45){
    asteroid3X -= 3;
  }
  else{
    asteroid3X = 550;
    asteroid3Y = random(150,350);
  }
}

void asteroid4Movement(){
  if (asteroid4X != -30){
    asteroid4X -= 4;
  }
  else{
    asteroid4X = 550;
    asteroid4Y = random(150,350);
  }
}

void asteroid5Movement(){
  if (asteroid5X != -40){
    asteroid5X -= 3;
  }
  else{
    asteroid5X = 550;
    asteroid5Y = random(50,450);
  }
}

void asteroid6Movement(){
  if (asteroid6X != -60){
    asteroid6X -= 2;
  }
  else{
    asteroid6X = 550;
    asteroid6Y = random(400,450);
  }
}

void asteroid7Movement(){
  if (asteroid7X != -60){
    asteroid7X -= 2;
  }
  else{
    asteroid7X = 550;
    asteroid7Y = random(50);
  }
}

void collision(){
  if( pWalkerY <= 5 || pWalkerY >= height-10)
  {
    smack.play();
    gameOver();
  }
}

void time(){
  textAlign(CENTER,RIGHT);
  fill(255);
  text(nf(timer.hour(), 2)+":"+nf(timer.minute(), 2)+":"+nf(timer.second(), 2), 470, 20);
}

void gameOver(){
  background(0);
  player.pause();
  myAnimation.play();
  lose.play();
  
  image(myAnimation, -300,0);
  
}