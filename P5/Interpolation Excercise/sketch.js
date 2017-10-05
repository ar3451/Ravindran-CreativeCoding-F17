var myMappedBlueValue;
var mappedSize;

function setup() {
    createCanvas(600, 600);
}

function draw() {
    background(255);

    line(100, 0, 100, height);
    line(500, 0, 500, height);

    contrainedVal = contrain(mouseX, 100, 500);

    fill(255, 0, 0);
    ellipse(contrainedVal, (2 / 3) * height, 30, 30);

    /*
    //map(value, input,Min, inputMax, outputMin, outputMax)
    myMappedBlueValue = map(mouseY, 0, height, 0, 255);
    mappedSize = map(mouseX, 0, width, 40, 400);

    fill(0, 0, myMappedBlueValue);
    ellipse(width / 2, height / 2, mappedSize, mappedSize);
    */
}