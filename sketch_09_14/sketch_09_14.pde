int timer = millis();

void setup() {
  size(640, 360);
  background(0);
  noStroke();
  noLoop();
}

void draw() {
  spawnTarget((width*(random(0,1))), (height*(random(0,1))), random(10,250), random(1,10));
}

void spawnTarget(float xloc, float yloc, float size, float num) {
  float grayvalues = 150;
  float steps = 30; // always going to be 3
  for (int i = 0; i < num; i++) {
    fill(i*grayvalues);
    ellipse(xloc, yloc, size - i*steps, size - i*steps);
  }
}