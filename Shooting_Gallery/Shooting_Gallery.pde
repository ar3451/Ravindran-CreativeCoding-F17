float dx;
float dy;
float x;
float y;

float theTimeInSeconds;

float level;

int score;

boolean running;

float cx;
float cy;
float dcx;
float dcy;
float ring5x;
float ring5y;
float ring4x;
float ring4y;
float ring3x;
float ring3y;
float ring2x;
float ring2y;
float ring1x;
float ring1y;
float diameter;

void setup () {
  
  size(500, 500);
  background(255, 255, 255);
  
  running = false;
  score = 0;
  level = 1;
  theTimeInSeconds = int(millis() / 1000);
  
  cx = 250;
  cy = 250;
  dcx = 0;
  dcy = 0;
  
  ring5x = 450;
  ring5y = 450;
  ring4x = 350;
  ring4y = 350;
  ring3x = 250;
  ring3y = 250;
  ring2x = 150;
  ring2y = 150;
  ring1x = 50;
  ring1y = 50;
  
  diameter = 50;
  x = 100;
  y = 80;
  dx = 1;
  dy = 2;
  
  fill(0);
  text("press ENTER to start", 100, 30);
  text("press the p key to pause", 100, 50);
  text("Click on the ball in different rings of the target to earn points", 100, 70);
}

void draw () {
  if (running) {
    if (level == 10) {
      background(random(255));
    } else {
      background(255, 255, 255);
    }
    drawOriginalTarget();
    settingXYs();
    bounceOffWall();
  }
  scoreBox();
  levelSetting();
  targetMovement();

  level2(); 
  level3();
  
}

void settingXYs() {
  x = x + dx;
  y = y + dy;
  cx = cx + dcx;
  cy = cy + dcy;
}

void drawOriginalTarget() {
  fill(0);
  ellipse(cx, cy, ring5x, ring5y);
  fill(255, 0, 0);
  ellipse(cx, cy, ring4x, ring4y);
  fill(0);
  ellipse(cx, cy, ring3x, ring3y);
  fill(255, 0, 0);
  ellipse(cx, cy, ring2x, ring2y);
  fill(0);
  ellipse(cx, cy, ring1x, ring1y);
  fill(255, 0, 0);
  ellipse(x, y, diameter, diameter);
  fill(255);
  rect(0, 0, 35, 10);
}

void bounceOffWall() {
  if (x > width - diameter/2) {
    dx = dx * -1;
  }
  if (x < diameter/2) {
    dx = dx * -1;
  }
  if (y > height - diameter/2) {
    dy = dy * -1;
  }
  if (y < diameter/2) {
    dy = dy * -1;
  }
}

void scoreBox() {
  fill(0);
  text(score, 10, 10);
}

void levelSetting() {
  if (score >= 100) {
    level = level + 1;
    println(level);
  }
}

void targetMovement() {
  if (level >= 3) {
    if (cx > (width - ((ring5x)/2))) {
      dcx = dcx * -1;
    }
    if (cx < ((ring5x)/2)) {
      dcx = dcx * -1;
    }
    if (cy > (height - ((ring5x)/2))) {
      dcy = dcy * -1;
    }
    if (cy < ((ring5x)/2)) {
      dcy = dcy * -1;
    }
  }
}

void firstTargetReduction() {
  ring5x = 415;
  ring5y = 415;
  ring4x = 315;
  ring4y = 315;
  ring3x = 215;
  ring3y = 215;
  ring2x = 115;
  ring2y = 115;
  ring1x = 15;
  ring1y = 15;
}

void secondTargetReduction() {
  ring5x = 400;
  ring5y = 400;
  ring4x = 300;
  ring4y = 300;
  ring3x = 200;
  ring3y = 200;
  ring2x = 100;
  ring2y = 100;
  ring1x = 0;
  ring1y = 0;
}

void level2() {
  if (level == 2 && score > 100 ) {
    running = false;
    background(255, 255, 255);
    text("Level 1 Complete", 150, 225);
    text("Press ENTER to start Level 2", 150, 250);
    score = 0;
    dx = 2;
    dy = 3;
  }
}

void level3() {
  if (level == 3 && score >= 100) {
    running = false;
    background(255, 255, 255);
    text("Level 2 Complete", 150, 225);
    text("Press ENTER to start Level 3", 150, 250);
    score = 0;
    dcx = 1;
    dcy = 2;
  }
}


void mousePressed () {  
  if ((dist(250, 250, mouseX, mouseY) > ((ring5x/2)-diameter)) && (dist(250, 250, mouseX, mouseY) < (ring5x/2)) && (dist(mouseX, mouseY, x, y) < (diameter/2))) { 
    score = score + 10;
  }
  if ((dist(250, 250, mouseX, mouseY) > ((ring4x/2)-diameter)) && (dist(250, 250, mouseX, mouseY) < (ring4x/2)) && (dist(mouseX, mouseY, x, y) < (diameter/2))) { 
    score = score + 20;
  }
  if ((dist(250, 250, mouseX, mouseY) > ((ring3x/2)-diameter)) && (dist(250, 250, mouseX, mouseY) < (ring3x/2)) && (dist(mouseX, mouseY, x, y) < (diameter/2))) { 
    score = score + 30;
  }
  if ((dist(250, 250, mouseX, mouseY) > ((ring2x/2)-diameter)) && (dist(250, 250, mouseX, mouseY) <(ring2x/2)) && (dist(mouseX, mouseY, x, y) < (diameter/2))) { 
    score = score + 40;
  }
  if ((dist(250, 250, mouseX, mouseY) > ((ring1x)-diameter)) && (dist(250, 250, mouseX, mouseY) < (ring1x/2)) && (dist(mouseX, mouseY, x, y) < (diameter/2))) { 
    score = score + 50;
  }
}
void keyPressed() {

  if (keyCode == ENTER) {
    running = true;
  }
  if (key == 'p') {  
    running = false;
  }
}

// Shooting Gallery Assignment