function setup() {
    createCanvas(600, 600);

}

function draw() {
    background(255);

    push();
    fill(0, 0, 255);
    translate(50, height / 2);
    rotate(PI / 3);
    rect(0, 0, 50, 50);

    pop();

    push();
    fill(255, 0, 0);
    translate(150, height / 2);
    rotate(PI / 2.5);
    rect(0, 0, 50, 50);

    pop();

    push();
    fill(0, 255, 0);
    translate(250, height / 2);
    rotate(PI / 5);
    rect(0, 0, 50, 50);

    pop();
}