float ballX1 = random(100,500);
float ballY1 = 100;

float speedX1 = 0;
float speedY1 = 10;

float ballX2 = random(350);
float ballY2 = random(150);

float speedX2 = 5;
float speedY2 = 5;

float ballX3 = random(400);
float ballY3 = random(50);

float speedX3 = 5;
float speedY3 = 8;

float ballX4 = random(600);
float ballY4 = random(200);

float speedX4 = 10;
float speedY4 = 8;

float ballX5 = random(600);
float ballY5 = random(200);

float speedX5 = 15;
float speedY5 = 8;


//float powerUpX = 300;
//float powerUpY = 0;

int hitCounter;
float bar = 1000/(hitCounter+15);

int hit = 0;
int miss = 0;

PImage startmenu,paper,win, lose;
int stage;
//PFont font1;

import ddf.minim.*;

Minim minim;
AudioPlayer player,winSound, loseSound, hitSound, missSound, bounce;


void setup() {
  size(600,400);
  stage = 1;
  //font1 = loadFont("AxureHandwriting-BoldItalic-48.vlw");
  startmenu = loadImage("mainmenu.jpg");
  image(startmenu, 0, 0, width, height);
  minim = new Minim(this);
  player = minim.loadFile("Bumblebee.mp3");
  winSound = minim.loadFile("winSound.mp3");
  loseSound = minim.loadFile("loseSound.mp3");
  hitSound = minim.loadFile("Hit.mp3");
  missSound = minim.loadFile("Miss.mp3");
  bounce = minim.loadFile("Bounce.mp3");
}


void draw() {
  if(stage==1){
    /*textFont(font1, 24);
    fill(0);
    textAlign(CENTER);
    text("MAX CREDITS!",500,450);
    text("You're back in school but you're taking 5 classes!",500,470);
    text("Try to juggle everything as best you can until the end of the semester~",500, 490);
    */
    if(keyPressed == true){
      stage = 2;
  }
  }
  if(stage==2){
    paper = loadImage("paper.jpg");
    image(paper, 0, 0, width, height);
    fill(127,255,0);
    ellipse(ballX1,ballY1,50,50);
  
    fill (0);
    text ("Grade: " + hit, 10, 30);
    text ("Mistakes: " + miss, 10, 50);
    
    player.play();
    

    for(int i = 0; i < 100; i++){
      hitCounter = i;
    }

addBall1();

if(hit >= 5){
  addBall2();
}
if(hit >= 10){
  addBall3();
}
if(hit >= 15){
  addBall4();
}
if(hit >= 20){
  addBall5();
}
if(miss >= 100 || hit == 100){
    player.pause();
    stage = 3;
  }
  
if(stage==3){
   gameOver();
}
}
}

void addBall1(){
  // 2 credits
  
  if(ballX1 < 0 || ballX1 > width) {
     speedX1 = -speedX1;
     bounce.play();
  }
  if(ballY1 > height) {
    bounce.play();
    speedY1 = -speedY1;
    float distance = abs(mouseX - ballX1);
    
    if (distance < bar) {
      hit += 1;
      hitSound.play();
    }
    else {
      miss += 1;
    }
  } else speedY1 += 1;
 
  ballX1 += speedX1;
  ballY1 += speedY1;
  
  fill(0);
  rect(mouseX-bar,height-10,2*bar,30);
}

void addBall2(){
  
  // 3 credits
  
  if(ballX2 < 0 || ballX2 > width) {
     speedX2 = -speedX2;
     bounce.play();
  }
  if(ballY2 > height) {
    bounce.play();
    speedY2 = -speedY2;
    float distance = abs(mouseX - ballX2);
    
    if (distance < bar) {
      hitSound.play();
      hit += 1;
    }
    else {
      miss += 1;
    }
  } else speedY2 += 1;
 
  ballX2 += speedX2;
  ballY2 += speedY2;
  
  fill(255,255,0);
  ellipse(ballX2,ballY2,40,40);  
  
  fill(0);
  rect(mouseX-bar,height-10,2*bar,30);
}

void addBall3(){
  //3 credits
  
  if(ballX3 < 0 || ballX3 > width) {
     speedX3 = -speedX3;
     bounce.play();
  }
  if(ballY3 > height) {
    bounce.play();
    speedY3 = -speedY3;
    float distance = abs(mouseX - ballX3);
    
    if (distance < bar) {
      hit += 1;
    }
    else {
      miss += 1;
    }
  } else speedY3 += 1;
 
  ballX3 += speedX3;
  ballY3 += speedY3;
  
  fill(255,255,0);
  ellipse(ballX3,ballY3,40,40);
  
  fill(0);
  rect(mouseX-bar,height-10,2*bar,30);
}

void addBall4(){
  //4 credits
  
  
  if(ballX4 < 0 || ballX4 > width) {
     speedX4 = -speedX4;
  }
  if(ballY4 > height) {
    
    speedY4 = -speedY4;
    float distance = abs(mouseX - ballX4);
    
    if (distance < bar) {
      hit += 1;
    }
    else {
      miss += 2;
    }
  } else speedY4 += 1;
 
  ballX4 += speedX4;
  ballY4 += speedY4;
  
  fill(255,0,0);
  ellipse(ballX4,ballY4,25,25);
  
  fill(0);
  rect(mouseX-bar,height-10,2*bar,30);
}

void addBall5(){
  // 4 credits
  
  if(ballX5 < 0 || ballX5 > width) {
     speedX5 = -speedX5;
  }
  if(ballY5 > height) {
    
    speedY5 = -speedY5;
    float distance = abs(mouseX - ballX5);
    
    if (distance < bar) {
      hit += 1;
    }
    else {
      miss += 2;
    }
  } else speedY5 += 1;
 
  ballX5 += speedX5;
  ballY5 += speedY5;
  
  fill(255,0,0);
  ellipse(ballX5,ballY5,25,25);
  
  fill(0);
  rect(mouseX-bar,height-10,2*bar,30);
}

/*void powerUp(){
  float bar = 1000/ (hit+10);
  if (powerUpY > height) {
      bar += 150;
    }
    
  powerUpY += 5;
   
  fill(10,10,10);
  ellipse(powerUpX,powerUpY,75,75); 
  
  fill(50,100,20);
  rect(mouseX-bar,height-10,2*bar,30);
    
}*/

void gameOver(){
    if(hit >= 60){
    win = loadImage("win.jpg");
    image(win, 0, 0, width, height);
    winSound.play();
    if(keyPressed == true){
      stage = 2;  
}
  }
  if(hit<60){
    lose = loadImage("lose.jpg");
    image(lose, 0, 0, width, height);
    loseSound.play();
}
}