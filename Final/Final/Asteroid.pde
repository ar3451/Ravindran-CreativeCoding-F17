class Asteroid{
  
  float ax;
  float ay;
  
  Asteroid(){
    ax = 510;
    ay = 300;
  }
  
  void spawn(){
    stroke(0);
    fill(127);
    ellipse(ax,ay,64,64);
  }
  
  void moveAsteroids(){
    for(int i = 0; ax != -32; i++){
      ax -= 3;
      i++;
    }
}
}