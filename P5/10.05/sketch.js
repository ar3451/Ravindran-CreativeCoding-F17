// Akash Ravindran and Marry Soegino

function setup() {
    createCanvas(600, 600);
}

function draw() {
    background(0);
    createShape();
}

//star
function createShape() {

    //red star
    myMappedColorValue1 = map(mouseY, 0, height, 0, 255);
    myMappedColorValue2 = map(mouseY, 0, height, 0, 165);
    myMappedColorValue3 = map(mouseY, 0, height, 0, 75);
    myMappedColorValue4 = map(mouseY, 0, height, 0, 130);
    myMappedColorValue5 = map(mouseY, 0, height, 0, 238);

    push();
    translate(250, 50);
    fill(myMappedColorValue1, 0, 0);
    beginShape();
    vertex(50, 0); //ok
    vertex(60, 50); //ok
    vertex(100, 50); //ok
    vertex(70, 63);
    vertex(75, 100);
    vertex(50, 75); //okay
    vertex(25, 100);
    vertex(30, 63);
    vertex(0, 50); //ok
    vertex(40, 50); //ok
    endShape(CLOSE);


    fill(255);
    ellipse(48, 30, 2, 2);
    ellipse(52, 30, 2, 2);
    pop();


    //green
    push();
    translate(325, 150);
    fill(0, myMappedColorValue1, 0);
    beginShape();
    vertex(50, 0); //ok
    vertex(60, 50); //ok
    vertex(100, 50); //ok
    vertex(70, 63);
    vertex(75, 100);
    vertex(50, 75); //okay
    vertex(25, 100);
    vertex(30, 63);
    vertex(0, 50); //ok
    vertex(40, 50); //ok
    endShape(CLOSE);


    fill(255);
    ellipse(48, 30, 2, 2);
    ellipse(52, 30, 2, 2);
    pop();


    //blue
    push();
    translate(25, 350);
    fill(0, 0, myMappedColorValue1);
    beginShape();
    vertex(50, 0); //ok
    vertex(60, 50); //ok
    vertex(100, 50); //ok
    vertex(70, 63);
    vertex(75, 100);
    vertex(50, 75); //okay
    vertex(25, 100);
    vertex(30, 63);
    vertex(0, 50); //ok
    vertex(40, 50); //ok
    endShape(CLOSE);


    fill(255);
    ellipse(48, 30, 2, 2);
    ellipse(52, 30, 2, 2);
    pop();

    //yellow
    push();
    translate(400, 250);
    fill(myMappedColorValue1, myMappedColorValue1, 0);
    beginShape();
    vertex(50, 0); //ok
    vertex(60, 50); //ok
    vertex(100, 50); //ok
    vertex(70, 63);
    vertex(75, 100);
    vertex(50, 75); //okay
    vertex(25, 100);
    vertex(30, 63);
    vertex(0, 50); //ok
    vertex(40, 50); //ok
    endShape(CLOSE);


    fill(255);
    ellipse(48, 30, 2, 2);
    ellipse(52, 30, 2, 2);
    pop();

    //orange
    push();
    translate(175, 150);
    fill(myMappedColorValue1, myMappedColorValue2, 0);
    beginShape();
    vertex(50, 0); //ok
    vertex(60, 50); //ok
    vertex(100, 50); //ok
    vertex(70, 63);
    vertex(75, 100);
    vertex(50, 75); //okay
    vertex(25, 100);
    vertex(30, 63);
    vertex(0, 50); //ok
    vertex(40, 50); //ok
    endShape(CLOSE);


    fill(255);
    ellipse(48, 30, 2, 2);
    ellipse(52, 30, 2, 2);
    pop();


    //indigo
    push();
    translate(100, 250);
    fill(myMappedColorValue3, 0, myMappedColorValue4);
    beginShape();
    vertex(50, 0); //ok
    vertex(60, 50); //ok
    vertex(100, 50); //ok
    vertex(70, 63);
    vertex(75, 100);
    vertex(50, 75); //okay
    vertex(25, 100);
    vertex(30, 63);
    vertex(0, 50); //ok
    vertex(40, 50); //ok
    endShape(CLOSE);


    fill(255);
    ellipse(48, 30, 2, 2);
    ellipse(52, 30, 2, 2);
    pop();

    //violet
    push();
    translate(475, 350);
    fill(myMappedColorValue5, myMappedColorValue4, myMappedColorValue5);
    beginShape();
    vertex(50, 0); //ok
    vertex(60, 50); //ok
    vertex(100, 50); //ok
    vertex(70, 63);
    vertex(75, 100);
    vertex(50, 75); //okay
    vertex(25, 100);
    vertex(30, 63);
    vertex(0, 50); //ok
    vertex(40, 50); //ok
    endShape(CLOSE);


    fill(255);
    ellipse(48, 30, 2, 2);
    ellipse(52, 30, 2, 2);
    pop();

}