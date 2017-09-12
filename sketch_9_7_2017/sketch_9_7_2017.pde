void setup(){
  size(400,400);
  background(201,219,220);
}

void draw(){
  
  //mirror edge
  strokeWeight(20);
  stroke(0);
  fill(201,219,220);
  rect(0,0,400,400);
  
  //face
  noStroke();
  fill(222,184,135);
  rect(125, 125, 150, 125);
  //ellipse(width/2, height/2, 150,150);
  
  //chin
  noStroke();
  fill(222,184,135);
  quad(125,250,275,250,210,280,190,280);
  
  //sunlight
  noStroke();
  fill(255);
  triangle(10,10,10,150,150,10);
  
  noStroke();
  fill(255);
  triangle(390,390,390,250,250,390);
  
  
  //hair
  noStroke();
  fill(0);
  quad(125,125,135,105,285,105,275,125);
  
  noStroke();
  fill(0);
  quad(125,125,120,130,120,195,125,195);
  quad(275,125,280,130,280,195,275,195);
  
  //nose
  fill(244,164,96);
  quad(199,182,190,195,199,225,210,195);
  
  //mouth
  fill(255,218,185);
  rect(170,230,60,20);
  
  //iris
  fill(225);
  ellipse(180,161,20,20);
  
  fill(225);
  ellipse(217,161,20,20);
  
  //pupils
  fill(139,69,19);
  ellipse(181,162,7,7);
  ellipse (218,162,7,7);
  
  //Eyebrows
  fill(0);
  ellipse(180,146,30,5);
  
  fill(0);
  ellipse(215,146,30,5);
  
  print("mouseX and mouseY are: ");
  println(mouseX,mouseY);
}