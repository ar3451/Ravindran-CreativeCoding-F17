import ddf.minim.*;

Minim minim;
AudioPlayer player;

void setup(){
  size(600,400);
  minim = new Minim(this);
  player = minim.loadFile("Baq5 - Times Like This.mp3");
}

void draw(){
  //playDaSound();
  textSize(32);
  text("Hit Enter to start the music", 10, 30);
  text("Hit Backspace to pause the music", 10, 70);
  text("Hit Mouse1 to restart the music", 10, 110);
  
  
  
  if (keyPressed){
    if(key == ENTER){
      playDaSound();
    }
    if(key == BACKSPACE){
      pauseDaSound();
    }
  }
    
  if(mousePressed){
    restartSound();
  }
}


void playDaSound(){
  player.play();
}

void pauseDaSound(){
  player.pause();
}

void restartSound(){
  player.loop();
  //player.play();
}