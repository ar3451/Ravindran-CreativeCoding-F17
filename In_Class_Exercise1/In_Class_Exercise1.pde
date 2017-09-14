void setup(){
  size(600,600);
  background(255);
}

void draw(){
  if (mouseX <= (width/2) && mouseY <= (height-200)){
    fill(0,0,255);
    rect(0,0,300,400);
  }
  else if (mousePressed){
  }
  else if(mouseX == 450){
    fill(255,255,0);
    rect(0,0,width,height);
  }
  else if (mouseX >= (width/2)){
    fill(255,0,0);
    rect(300,0,600,600);
  }
  else{
    fill(255);
    rect(0,0,width,height);
  }
}
  
void mousePressed(){
    fill(0,128,128);
    rect(0,400,300,200);
}