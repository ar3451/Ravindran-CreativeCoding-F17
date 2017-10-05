var redVal;
var greenVal;

function setup() {
    createCanvas(600, 600);

    redVal = 255;
    greenVal = 255;

    console.log("Launched the screen!");
}

function draw() {

    //10x10 grid of rectangles

    //nest the first dimension inside another loop to make it 2D

    for (var j = 0; j < 10; j++) {
        greenVal = 255 - (j * 20);
        //start with the inner first dimension axis

        for (var i = 0; i < 10; i++) {
            redVal = 255 - (i * 20);
            fill(redVal, greenVal, 0);
            //make rectangles in one axis
            rect((i * 20) + 20, (j * 20) + 20, 15, 15);
        }
    }
}