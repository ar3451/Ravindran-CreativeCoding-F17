function setup() {
    createCanvas(600, 500);

}

function draw() {
    background(255);
    fill(0, 0, 255);
    rect(width / 2, 0, width / 2, height);

    if (mouseIsPressed) {
        fill(0, 128, 128);
        rect(0, 0, width / 2, height / 3);
    }

    fill(255, 0, 0);
    rect(0, 150, width / 2, 400);

    if (mouseX > 500) {
        fill(255, 255, 0);
        rect(0, 0, width, height);
    }
}